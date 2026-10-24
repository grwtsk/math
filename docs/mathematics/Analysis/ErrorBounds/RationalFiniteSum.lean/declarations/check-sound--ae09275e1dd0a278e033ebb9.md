# check_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f585c27-1b16-d2b6-35f8-f76a487f1b3b",
  "kind": "theorem",
  "lexical_name": "check_sound",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "check-sound--ae09275e1dd0a278e033ebb9",
  "source": {
    "blob": "6c2025f8615820dba06f1ba61022609088577211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 71,
    "path": "GRWTSK/Analysis/ErrorBounds/RationalFiniteSum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae09275e1dd0a278e033ebb9799957564a15352771a24ba36cb8205d6c1028e2",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/RationalFiniteSum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f585c27-1b16-d2b6-35f8-f76a487f1b3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem check_sound {terms : List Coordinates} {tr : Trace}
    (h : check terms tr = true) :
    ‖(∑ i ∈ Finset.range terms.length, toComplex (termAt terms i)) -
      toComplex (valueAt tr terms.length)‖ ≤ (outputRadius terms tr : ℝ) := by
  obtain ⟨_hv, _hr, h0, hs⟩ := (check_iff_valid terms tr).mp h
  have hz : toComplex (valueAt tr 0) = 0 := by rw [h0, toComplex_zero]
  have hstep : ∀ i < terms.length,
      ‖toComplex (valueAt tr (i + 1)) -
        (toComplex (valueAt tr i) + toComplex (termAt terms i))‖ ≤ (radiusAt tr i : ℝ) := by
    intro i hi
    simpa only [toComplex_sub, toComplex_add] using
      (inBall_iff _ _).mp (hs i (Finset.mem_range.mpr hi))
  have hout := ComplexTaylorEnclosure.sum_from_step_errors
    (fun i => toComplex (termAt terms i)) (fun i => toComplex (valueAt tr i))
    (fun i => (radiusAt tr i : ℝ)) hz terms.length hstep
  simpa only [outputRadius, Rat.cast_sum] using hout

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/RationalFiniteSum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/RationalFiniteSum.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c2025f8615820dba06f1ba61022609088577211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
