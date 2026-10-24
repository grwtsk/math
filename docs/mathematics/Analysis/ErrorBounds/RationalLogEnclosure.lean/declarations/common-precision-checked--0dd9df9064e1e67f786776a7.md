# common_precision_checked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:777ff151-0371-d10e-79f3-005f1c3009c8",
  "kind": "theorem",
  "lexical_name": "common_precision_checked",
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
  "slug": "common-precision-checked--0dd9df9064e1e67f786776a7",
  "source": {
    "blob": "5dabc4dd637ed635c34990e9512bcf27c7c7ae78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 142,
    "path": "GRWTSK/Analysis/ErrorBounds/RationalLogEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dd9df9064e1e67f786776a75e6d51baa9b4273edee36e7f1a4116d82fd990f1",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/RationalLogEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:777ff151-0371-d10e-79f3-005f1c3009c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem common_precision_checked {t ε : ℚ} {k L : ℕ}
    (h : validScale t k L L = true) (hε : 0 ≤ ε)
    (hp : (k : ℚ) + 1 ≤ 4 * (L : ℚ) * ε) : checkWithin t k L L ε = true := by
  have hL := ((validScale_iff t k L L).mp h).2.2.2.1
  have hLpos : (0 : ℚ) < L := by exact_mod_cast hL
  have hr : radius t k L L ≤ ((k : ℚ) + 1) / (4 * (L : ℚ)) := by
    calc
      _ ≤ (k : ℚ) / (4 * (L : ℚ)) + 1 / (4 * (L : ℚ)) := radius_le h
      _ = _ := by ring
  have hsmall : ((k : ℚ) + 1) / (4 * (L : ℚ)) ≤ ε :=
    (div_le_iff₀ (by positivity : (0 : ℚ) < 4 * (L : ℚ))).mpr (by nlinarith [hp])
  simp only [checkWithin, h, Bool.true_and, decide_eq_true_eq]
  exact ⟨hε, hr.trans hsmall⟩

/-- Exact finite input guards, without an assumed successful analytic enclosure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/RationalLogEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/RationalLogEnclosure.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dabc4dd637ed635c34990e9512bcf27c7c7ae78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
