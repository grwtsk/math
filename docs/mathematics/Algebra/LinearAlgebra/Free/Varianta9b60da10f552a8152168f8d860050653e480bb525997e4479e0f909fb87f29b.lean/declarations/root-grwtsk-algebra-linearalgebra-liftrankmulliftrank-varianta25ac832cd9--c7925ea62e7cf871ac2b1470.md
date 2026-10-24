# _root_.GRWTSK.Algebra.LinearAlgebra.LiftRankMulLiftRank.Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.LinearEquiv.smul_id_of_finrank_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfa0697a79a9eb411ba5c71432ec222a0029c8d2685a3923c3c43c55f6a1ed63",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.LiftRankMulLiftRank.Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.LinearEquiv.smul_id_of_finrank_eq_one",
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
  "slug": "root-grwtsk-algebra-linearalgebra-liftrankmulliftrank-varianta25ac832cd9--c7925ea62e7cf871ac2b1470",
  "source": {
    "blob": "56f78c3c06bdc64d23e6ad9345fccd34eddfcbc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 415,
    "path": "GRWTSK/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7925ea62e7cf871ac2b14702fd3842bd8cca46422e190a4ee4742ac36331423",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfa0697a79a9eb411ba5c71432ec222a0029c8d2685a3923c3c43c55f6a1ed63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def _root_.GRWTSK.Algebra.LinearAlgebra.LiftRankMulLiftRank.Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.LinearEquiv.smul_id_of_finrank_eq_one (d1 : Module.finrank R M = 1) :
    R ≃ₗ[R] (M →ₗ[R] M) where
  toFun := fun c ↦ c • LinearMap.id
  map_add' c d := by ext; simp [add_smul]
  map_smul' c d := by ext; simp [mul_smul]
  invFun u := (u.existsUnique_eq_smul_id_of_finrank_eq_one d1).choose
  left_inv c := by
    simp [← (LinearMap.existsUnique_eq_smul_id_of_finrank_eq_one d1 _).choose_spec.2 c]
  right_inv u := ((u.existsUnique_eq_smul_id_of_finrank_eq_one d1).choose_spec.1).symm

end Module

end StrongRankCondition

namespace Algebra

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56f78c3c06bdc64d23e6ad9345fccd34eddfcbc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
