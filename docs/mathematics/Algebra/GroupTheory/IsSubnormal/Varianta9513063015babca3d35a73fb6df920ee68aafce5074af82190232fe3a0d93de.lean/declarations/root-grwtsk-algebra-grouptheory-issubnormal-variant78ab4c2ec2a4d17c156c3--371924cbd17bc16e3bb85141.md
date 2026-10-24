# _root_.GRWTSK.Algebra.GroupTheory.IsSubnormal.Variant78ab4c2ec2a4d17c156c3aaed826ce9f43afa79c4c0b93e940688cc51f6355ad.AddSubgroup.IsSubnormal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ff17ce92dfa3114be10fd67870c102260f2fd73fa13a78dacab4166a440900a",
  "kind": "inductive",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.IsSubnormal.Variant78ab4c2ec2a4d17c156c3aaed826ce9f43afa79c4c0b93e940688cc51f6355ad.AddSubgroup.IsSubnormal",
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
  "slug": "root-grwtsk-algebra-grouptheory-issubnormal-variant78ab4c2ec2a4d17c156c3--371924cbd17bc16e3bb85141",
  "source": {
    "blob": "4c650d05b3d7110f32d6f89de99008bab81d9bef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 93,
    "path": "GRWTSK/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:371924cbd17bc16e3bb851415c98d3add73fb80a14c465e8cab73020937d7d72",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ff17ce92dfa3114be10fd67870c102260f2fd73fa13a78dacab4166a440900a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive _root_.GRWTSK.Algebra.GroupTheory.IsSubnormal.Variant78ab4c2ec2a4d17c156c3aaed826ce9f43afa79c4c0b93e940688cc51f6355ad.AddSubgroup.IsSubnormal {G : Type*} [AddGroup G] : AddSubgroup G → Prop where
  /-- The whole additive subgroup `G` is subnormal in itself. -/
  | top : IsSubnormal (⊤ : AddSubgroup G)
  /-- An additive subgroup `H` is subnormal if there is a subnormal additive subgroup `K`
  containing `H` that is subnormal itself and such that `H` is normal in `K`. -/
  | step : ∀ H K, (h_le : H ≤ K) → (hSubn : IsSubnormal K) → (hN : (H.addSubgroupOf K).Normal) →
    IsSubnormal H

attribute [simp] Subgroup.IsSubnormal.top

/-- A normal subgroup is subnormal. -/
@[to_additive /-- A normal additive subgroup is subnormal. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c650d05b3d7110f32d6f89de99008bab81d9bef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
