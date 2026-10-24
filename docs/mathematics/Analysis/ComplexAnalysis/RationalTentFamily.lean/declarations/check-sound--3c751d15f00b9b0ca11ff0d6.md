# check_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6a6ceee-e869-ab0d-9d9f-f323b1ae2d86",
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
  "slug": "check-sound--3c751d15f00b9b0ca11ff0d6",
  "source": {
    "blob": "8235fd3fa6610017499cd1cfbf1a4350cba8d3ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 142,
    "path": "GRWTSK/Analysis/Complex/RationalTentFamily.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c751d15f00b9b0ca11ff0d68428ed7214e1c7a3c0dd97dcf14c8119c36fd48d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalTentFamily.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6a6ceee-e869-ab0d-9d9f-f323b1ae2d86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem check_sound {family : List Member} {x h : ℚ} {tr : Trace}
    (hcheck : check family x h tr = true) :
    ‖centerSum family x h - toComplex (output family tr)‖ ≤ (error family x h tr : ℝ) := by
  obtain ⟨_, _, _, _, hs, hacc⟩ := (check_iff_valid family x h tr).mp hcheck
  have hf := centerSum_error (fun i hi => (hs i hi).2.2)
  have hh := RationalFiniteSum.check_sound hacc
  simp only [length_terms] at hh
  let Q : ℂ := ∑ i ∈ Finset.range family.length,
    toComplex (RationalFiniteSum.termAt (terms family tr.evaluations) i)
  calc
    _ = ‖(centerSum family x h - Q) + (Q - toComplex (output family tr))‖ := by
      congr 1; abel
    _ ≤ ‖centerSum family x h - Q‖ + ‖Q - toComplex (output family tr)‖ := norm_add_le _ _
    _ ≤ (error family x h tr : ℝ) := by
      simpa only [error, Rat.cast_add, output] using add_le_add hf hh

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalTentFamily.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalTentFamily.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8235fd3fa6610017499cd1cfbf1a4350cba8d3ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
