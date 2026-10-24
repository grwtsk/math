# fderiv_const_smul_of_invertible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99f2c6461a9d095cfde92b3a93aa450da1f128e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c5024cc6675fee8a0f8805091130c3dd25d846ae4671ac95e2a8a461617fe87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:629926c0-3899-7bb4-42b2-5f7822c82593",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df5bb290-3540-465c-07be-f214d38f44f2",
  "kind": "theorem",
  "lexical_name": "fderiv_const_smul_of_invertible",
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
  "slug": "fderiv-const-smul-of-invertible--d3561308d1bfa20a0428b4ed",
  "source": {
    "blob": "99f2c6461a9d095cfde92b3a93aa450da1f128e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 134,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant5c5024cc6675fee8a0f8805091130c3dd25d846ae4671ac95e2a8a461617fe87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3561308d1bfa20a0428b4ed6c06df04621136928c4cc51d585e18d007226dfd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant5c5024cc6675fee8a0f8805091130c3dd25d846ae4671ac95e2a8a461617fe87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df5bb290-3540-465c-07be-f214d38f44f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fderiv_const_smul_of_invertible (c : R) [Invertible c] :
    fderiv 𝕜 (c • f) x = c • fderiv 𝕜 f x := by
  simp [← fderivWithin_univ, fderivWithin_const_smul_of_invertible]

end ConstSMul

section ConstSMulDivisionRing

variable {R : Type*} [DivisionSemiring R] [Module R F] [SMulCommClass 𝕜 R F]
  [ContinuousConstSMul R F]

/-- Special case of `fderivWithin_const_smul_of_invertible` over a division semiring: any constant
is allowed.

TODO: This would work for scalars in a `GroupWithZero` if we had a `DistribMulActionWithZero`
typeclass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant5c5024cc6675fee8a0f8805091130c3dd25d846ae4671ac95e2a8a461617fe87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant5c5024cc6675fee8a0f8805091130c3dd25d846ae4671ac95e2a8a461617fe87.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99f2c6461a9d095cfde92b3a93aa450da1f128e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
