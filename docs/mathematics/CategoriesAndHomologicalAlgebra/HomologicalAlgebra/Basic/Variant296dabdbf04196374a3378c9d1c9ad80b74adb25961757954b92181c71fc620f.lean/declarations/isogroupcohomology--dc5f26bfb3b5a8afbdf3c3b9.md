# isoGroupCohomology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:396a95efeeafcfdab66f6140b75ff378dd7a1d275ec09c07d58957f461185c0a",
  "kind": "def",
  "lexical_name": "isoGroupCohomology",
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
  "slug": "isogroupcohomology--dc5f26bfb3b5a8afbdf3c3b9",
  "source": {
    "blob": "6682ccaeddc09024cc477e00e3b4747ecc22da3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 232,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant296dabdbf04196374a3378c9d1c9ad80b74adb25961757954b92181c71fc620f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc5f26bfb3b5a8afbdf3c3b9ae7ce896ff49c37d2d1b74d28a3b3133e9e17f53",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant296dabdbf04196374a3378c9d1c9ad80b74adb25961757954b92181c71fc620f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:396a95efeeafcfdab66f6140b75ff378dd7a1d275ec09c07d58957f461185c0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoGroupCohomology (n : ℕ) [NeZero n] :
    tateCohomologyFunctor n ≅ groupCohomology.functor.{u} R G n :=
  NatIso.ofComponents (fun M ↦ (tateComplexConnectData M).homologyIsoPos _ _ rfl) fun {X Y} f ↦ by
    simp [tateCohomologyFunctor, CochainComplex.ConnectData.homologyMap_map_of_eq_succ (n := n)]

set_option backward.isDefEq.respectTransparency false in
/-- The isomorphism between the `-n-1`-th Tate cohomology and `n`-th group homology for `n : ℕ`
non-zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant296dabdbf04196374a3378c9d1c9ad80b74adb25961757954b92181c71fc620f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant296dabdbf04196374a3378c9d1c9ad80b74adb25961757954b92181c71fc620f.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6682ccaeddc09024cc477e00e3b4747ecc22da3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
