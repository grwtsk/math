# bochnerVector_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ccde91a09a96cf0ad4383b5eb39f605c461a7eee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9d64d04-53ae-25a1-0cc6-09794ba1c6ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9242453-0c5f-c185-f840-7a8288190c91",
  "kind": "theorem",
  "lexical_name": "bochnerVector_norm_le",
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
  "slug": "bochnervector-norm-le--664324d2112c15613aaeff56",
  "source": {
    "blob": "ccde91a09a96cf0ad4383b5eb39f605c461a7eee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 46,
    "path": "GRWTSK/Analysis/MeasureTheory/OperatorScout/Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:664324d2112c15613aaeff56ba5caef1c1c42a08fecb93fbc85d6320ea86e2b5",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/OperatorScout/Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9242453-0c5f-c185-f840-7a8288190c91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bochnerVector_norm_le (f : FullH) :
    ‖bochnerVector f‖ ≤ (∫ a : ℝ, ‖fixedKernel a‖) * ‖f‖ := by
  calc
    _ ≤ ∫ a : ℝ, ‖(fixedKernel a : ℂ) • fullShift a f‖ := norm_integral_le_integral_norm _
    _ = _ := by
      simp only [norm_smul, Complex.norm_real, LinearIsometry.norm_map, integral_mul_const]

end
end OperatorScoutScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/OperatorScout/Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/OperatorScout/Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccde91a09a96cf0ad4383b5eb39f605c461a7eee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
