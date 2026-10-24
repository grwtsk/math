# ofIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a64a13af449c5d3ee9c461e78ab9081620b727ea1d06bffe4d40c3a8b3560bdb",
  "kind": "def",
  "lexical_name": "ofIso",
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
  "slug": "ofiso--a19bc73e361bcd499fe242a0",
  "source": {
    "blob": "04da7332d4db39539e8e0f61167e113922164acc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 147,
    "path": "GRWTSK/Topology/AlgebraicTopology/Pairing/Variant8bf0b4a7c6f2568e46ade037bd756067bcb992889ad28fac222481bf69ef2f9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a19bc73e361bcd499fe242a046b84d9dcd8dada53aa4b241a55c4e1a708da9e4",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Pairing/Variant8bf0b4a7c6f2568e46ade037bd756067bcb992889ad28fac222481bf69ef2f9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a64a13af449c5d3ee9c461e78ab9081620b727ea1d06bffe4d40c3a8b3560bdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofIso : B.Pairing where
  I := Subcomplex.N.orderIsoOfIso e hA ⁻¹' P.I
  II := Subcomplex.N.orderIsoOfIso e hA ⁻¹' P.II
  inter := by simp [← Set.preimage_inter, P.inter]
  union := by simp [← Set.preimage_union, P.union]
  p := ((Subcomplex.N.orderIsoOfIso e hA).subtypeEquiv (by simp)).trans
    (P.p.trans ((Subcomplex.N.orderIsoOfIso e hA).symm.subtypeEquiv (by simp)))

/-- A unification hint for the type (I) simplices of `Pairing.ofIso`. -/
unif_hint {X : SSet.{u}} {A : X.Subcomplex} (P : A.Pairing)
    {Y : SSet.{u}} {B : Y.Subcomplex} (e : Y ≅ X) (hA : A.preimage e.hom = B) where
  ⊢ (P.ofIso e hA).I ≟ (N.orderIsoOfIso e hA) ⁻¹' P.I

/-- A unification hint for the type (II) simplices of `Pairing.ofIso`. -/
unif_hint {X : SSet.{u}} {A : X.Subcomplex} (P : A.Pairing)
    {Y : SSet.{u}} {B : Y.Subcomplex} (e : Y ≅ X) (hA : A.preimage e.hom = B) where
  ⊢ (P.ofIso e hA).II ≟ (N.orderIsoOfIso e hA) ⁻¹' P.II

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Pairing/Variant8bf0b4a7c6f2568e46ade037bd756067bcb992889ad28fac222481bf69ef2f9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Pairing/Variant8bf0b4a7c6f2568e46ade037bd756067bcb992889ad28fac222481bf69ef2f9e.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04da7332d4db39539e8e0f61167e113922164acc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
