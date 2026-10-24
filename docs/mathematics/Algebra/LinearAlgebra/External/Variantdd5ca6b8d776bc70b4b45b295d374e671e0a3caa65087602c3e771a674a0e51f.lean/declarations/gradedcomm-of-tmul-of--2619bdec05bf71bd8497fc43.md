# gradedComm_of_tmul_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "211f269a90fb27ed9f21b1f73cc890de4be5491d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0da64726-f044-aac2-0a37-73bdaf406063",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5cb901d1-7c34-71ca-df1f-0a7fe1ac7343",
  "kind": "theorem",
  "lexical_name": "gradedComm_of_tmul_of",
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
  "slug": "gradedcomm-of-tmul-of--2619bdec05bf71bd8497fc43",
  "source": {
    "blob": "211f269a90fb27ed9f21b1f73cc890de4be5491d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 114,
    "path": "GRWTSK/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2619bdec05bf71bd8497fc43fa7bc35980064839c5111bddacbc4d094da8f4c9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cb901d1-7c34-71ca-df1f-0a7fe1ac7343`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gradedComm_of_tmul_of (i j : ι) (a : 𝒜 i) (b : ℬ j) :
    gradedComm R 𝒜 ℬ (lof R _ 𝒜 i a ⊗ₜ lof R _ ℬ j b) =
      (-1 : ℤˣ)^(j * i) • (lof R _ ℬ _ b ⊗ₜ lof R _ 𝒜 _ a) := by
  rw [gradedComm]
  dsimp only [LinearEquiv.trans_apply, LinearEquiv.ofLinear_apply]
  rw [TensorProduct.directSum_lof_tmul_lof, gradedCommAux_lof_tmul, Units.smul_def,
    -- Note: https://github.com/leanprover-community/mathlib4/pull/8386 specialized `map_smul` to `LinearEquiv.map_smul` to avoid timeouts.
    ← Int.cast_smul_eq_zsmul R, LinearEquiv.map_smul, TensorProduct.directSum_symm_lof_tmul,
    Int.cast_smul_eq_zsmul, ← Units.smul_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `211f269a90fb27ed9f21b1f73cc890de4be5491d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
