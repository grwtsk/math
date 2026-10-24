# composableArrows₃Functor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bec95639a10f7799981c5bdc90af045c06f85e96b5f7ad460edbbde806fb7182",
  "kind": "def",
  "lexical_name": "composableArrows₃Functor",
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
  "slug": "composablearrows-functor--eec6bcd0172cd802b2012266",
  "source": {
    "blob": "764470e3859e1d1ea2ff137c810ff3c1dbfc6885",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 164,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant18580c8082b5cf02606e1751891c254807bb60cc70a8c7273c2d85e6b98e3a0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eec6bcd0172cd802b2012266fca590b70cfaa28d9581b90fdcbc7795abf633cc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant18580c8082b5cf02606e1751891c254807bb60cc70a8c7273c2d85e6b98e3a0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bec95639a10f7799981c5bdc90af045c06f85e96b5f7ad460edbbde806fb7182`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def composableArrows₃Functor [CategoryWithHomology C] :
    HomologicalComplex C c ⥤ ComposableArrows C 3 where
  obj K := composableArrows₃ K i j
  map {K L} φ := ComposableArrows.homMk₃ (homologyMap φ i) (opcyclesMap φ i) (cyclesMap φ j)
    (homologyMap φ j) (by simp) (by simp) (by simp)

end HomologySequence

end Preadditive

section Abelian

variable {C ι : Type*} [Category C] [Abelian C] {c : ComplexShape ι}

/-- If `X₁ ⟶ X₂ ⟶ X₃ ⟶ 0` is an exact sequence of homological complexes, then
`X₁.opcycles i ⟶ X₂.opcycles i ⟶ X₃.opcycles i ⟶ 0` is exact. This lemma states
the exactness at `X₂.opcycles i`, while the fact that `X₂.opcycles i ⟶ X₃.opcycles i`
is an epi is an instance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant18580c8082b5cf02606e1751891c254807bb60cc70a8c7273c2d85e6b98e3a0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant18580c8082b5cf02606e1751891c254807bb60cc70a8c7273c2d85e6b98e3a0b.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `764470e3859e1d1ea2ff137c810ff3c1dbfc6885` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
