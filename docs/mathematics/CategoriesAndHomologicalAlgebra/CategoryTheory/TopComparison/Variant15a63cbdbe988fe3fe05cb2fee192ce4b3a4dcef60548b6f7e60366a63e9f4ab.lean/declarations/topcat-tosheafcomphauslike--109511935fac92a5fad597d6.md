# TopCat.toSheafCompHausLike

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68c6bf64d03542e615709899963502e956ed1091fe2e512d922c6b79f02a18a2",
  "kind": "def",
  "lexical_name": "TopCat.toSheafCompHausLike",
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
  "slug": "topcat-tosheafcomphauslike--109511935fac92a5fad597d6",
  "source": {
    "blob": "3f99212d28e0c8697c9f620c3a5270bc659dc041",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant15a63cbdbe988fe3fe05cb2fee192ce4b3a4dcef60548b6f7e60366a63e9f4ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:109511935fac92a5fad597d62b861a260c1f437110d85b2739345cecdb8d02ed",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant15a63cbdbe988fe3fe05cb2fee192ce4b3a4dcef60548b6f7e60366a63e9f4ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68c6bf64d03542e615709899963502e956ed1091fe2e512d922c6b79f02a18a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TopCat.toSheafCompHausLike :
    have := CompHausLike.preregular hs
    Sheaf (coherentTopology (CompHausLike.{u} P)) (Type (max u w)) where
  val := yonedaPresheaf.{u, max u w} (CompHausLike.compHausLikeToTop.{u} P) X
  cond := by
    have := CompHausLike.preregular hs
    rw [Presheaf.isSheaf_iff_preservesFiniteProducts_and_equalizerCondition]
    refine ⟨inferInstance, ?_⟩
    apply (config := { allowSynthFailures := true }) equalizerCondition_yonedaPresheaf
      (CompHausLike.compHausLikeToTop.{u} P) X
    intro Z B π he
    apply IsQuotientMap.of_surjective_continuous (hs _ he) π.hom.continuous

/--
`TopCat.toSheafCompHausLike` yields a functor from `TopCat.{max u w}` to
`Sheaf (coherentTopology (CompHausLike.{u} P)) (Type (max u w))`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant15a63cbdbe988fe3fe05cb2fee192ce4b3a4dcef60548b6f7e60366a63e9f4ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant15a63cbdbe988fe3fe05cb2fee192ce4b3a4dcef60548b6f7e60366a63e9f4ab.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f99212d28e0c8697c9f620c3a5270bc659dc041` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
