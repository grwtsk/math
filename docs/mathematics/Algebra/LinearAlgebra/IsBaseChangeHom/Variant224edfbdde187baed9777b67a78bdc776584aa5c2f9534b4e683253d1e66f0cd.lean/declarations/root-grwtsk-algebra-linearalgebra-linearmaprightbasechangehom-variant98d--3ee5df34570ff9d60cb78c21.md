# _root_.GRWTSK.Algebra.LinearAlgebra.LinearMapRightBaseChangeHom.Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.IsBaseChange.end

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e93a15c4-0fa9-1b1a-7ae9-2c4fc193257d",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.LinearMapRightBaseChangeHom.Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.IsBaseChange.end",
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
  "slug": "root-grwtsk-algebra-linearalgebra-linearmaprightbasechangehom-variant98d--3ee5df34570ff9d60cb78c21",
  "source": {
    "blob": "82c736ffceafe9db3669ee732cfc32ea9cd007f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 191,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsBaseChangeHom/Variant224edfbdde187baed9777b67a78bdc776584aa5c2f9534b4e683253d1e66f0cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ee5df34570ff9d60cb78c21e65e2610e1ecbe2fdfdb5f0bc673d1f269a77dc3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsBaseChangeHom/Variant224edfbdde187baed9777b67a78bdc776584aa5c2f9534b4e683253d1e66f0cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e93a15c4-0fa9-1b1a-7ae9-2c4fc193257d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.LinearMapRightBaseChangeHom.Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.IsBaseChange.end {α : M →ₗ[R] P} (j : IsBaseChange S α) :
    IsBaseChange S (endHom j) := by
  apply of_equiv <|
      (j.linearMapRight M).equiv ≪≫ₗ liftBaseChangeEquiv S ≪≫ₗ LinearEquiv.congrLeft P S j.equiv
  intro f
  ext p
  simp [equiv_tmul, LinearEquiv.congrLeft, endHom_apply]

end End

section Matrix

variable {Q : Type*} [AddCommMonoid Q] [Module R Q] [Module S P] [IsScalarTower R S P]
  [Module S Q] [IsScalarTower R S Q]
  {α : M →ₗ[R] P} {β : N →ₗ[R] Q}
  (ibcM : IsBaseChange S α) (ibcN : IsBaseChange S β)
  {ι θ : Type*} [DecidableEq ι] [Fintype ι] [Finite θ]
  (b : Module.Basis ι R M) (c : Module.Basis θ R N)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsBaseChangeHom/Variant224edfbdde187baed9777b67a78bdc776584aa5c2f9534b4e683253d1e66f0cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsBaseChangeHom/Variant224edfbdde187baed9777b67a78bdc776584aa5c2f9534b4e683253d1e66f0cd.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82c736ffceafe9db3669ee732cfc32ea9cd007f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
