# norm_eq_norm_adjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1a67c05-7b02-07d8-8560-769b8fa7a826",
  "kind": "theorem",
  "lexical_name": "norm_eq_norm_adjoin",
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
  "slug": "norm-eq-norm-adjoin--bd804cbff021bbea9b2e29c9",
  "source": {
    "blob": "0971866de5214fd5f1ed42447cedb46ab9d060b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 141,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd804cbff021bbea9b2e29c98be885e9cb4fc697c5c0b2a262b907244d9e30f8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1a67c05-7b02-07d8-8560-769b8fa7a826`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eq_norm_adjoin [FiniteDimensional K L] [Algebra.IsSeparable K L] (x : L) :
    norm K x = norm K (AdjoinSimple.gen K x) ^ finrank K⟮x⟯ L := by
  letI := Algebra.isSeparable_tower_top_of_isSeparable K K⟮x⟯ L
  let pbL := Field.powerBasisOfFiniteOfSeparable K⟮x⟯ L
  let pbx := IntermediateField.adjoin.powerBasis (Algebra.IsSeparable.isIntegral K x)
  rw [← AdjoinSimple.algebraMap_gen K x, norm_eq_matrix_det (pbx.basis.smulTower pbL.basis) _,
    smulTower_leftMulMatrix_algebraMap, det_blockDiagonal, AdjoinSimple.algebraMap_gen,
    norm_eq_matrix_det pbx.basis]
  simp only [Finset.card_fin, Finset.prod_const]
  congr
  rw [← PowerBasis.finrank]

section IntermediateField

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0971866de5214fd5f1ed42447cedb46ab9d060b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
