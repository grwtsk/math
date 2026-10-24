# isLimitMapCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8283084c658541d00f3e433bc3a6e0d112ed1698e3ff3f0e09238dc7db8d6038",
  "kind": "def",
  "lexical_name": "isLimitMapCone",
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
  "slug": "islimitmapcone--f059cb15f6e8224110c0da50",
  "source": {
    "blob": "ac06838ba1027268e6f7be82dcdb0feb9d448f02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 121,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f059cb15f6e8224110c0da5073f0a6e74ca70a39d78e50459c030c3e9d13cd4a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8283084c658541d00f3e433bc3a6e0d112ed1698e3ff3f0e09238dc7db8d6038`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isLimitMapCone : IsLimit (W.weightedLimObj.mapCone c) where
  lift s :=
    (isLimitWeightedLimCone W c.pt).lift
      (fun j x ↦ liftAux W hc s x)
      (fun j₁ j₂ x f ↦ (isLimitOfPreserves ((evaluation _ _).obj j₂) hc).hom_ext (by simp))
  uniq s m hm := by
    dsimp
    ext j x
    refine (isLimitOfPreserves ((evaluation _ _).obj j) hc).hom_ext ?_
    simp [← hm]

end preservesLimit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac06838ba1027268e6f7be82dcdb0feb9d448f02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
