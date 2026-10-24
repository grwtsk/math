# CountableAB4.of_hasExactColimitsOfShape_nat_and_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0572fcbb-5f69-1cba-6917-dbb9768aec83",
  "kind": "lemma",
  "lexical_name": "CountableAB4.of_hasExactColimitsOfShape_nat_and_finite",
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
  "slug": "countableab4-of-hasexactcolimitsofshape-nat-and-finite--1e7b8900f341d1d9df36a1ea",
  "source": {
    "blob": "396f007c83383599ab8260ba35e87f79d5ddce34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 496,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant798bc32a3eca8fd73f2b088310c64b3652fb4569ddd6ab31276590649f6a9d0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e7b8900f341d1d9df36a1eafebad66f009642f338bc9dac7e6b19d059f455b2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant798bc32a3eca8fd73f2b088310c64b3652fb4569ddd6ab31276590649f6a9d0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0572fcbb-5f69-1cba-6917-dbb9768aec83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CountableAB4.of_hasExactColimitsOfShape_nat_and_finite [HasCountableCoproducts C]
    [HasFiniteLimits C] [∀ (J : Type) [Finite J], HasExactColimitsOfShape (Discrete J) C]
    [HasExactColimitsOfShape (Discrete ℕ) C] :
    CountableAB4 C where
  ofShape J := by
    by_cases h : Finite J
    · infer_instance
    · have : Infinite J := ⟨h⟩
      let _ := Encodable.ofCountable J
      let _ := Denumerable.ofEncodableOfInfinite J
      exact hasExactColimitsOfShape_of_final C (Discrete.equivalence (Denumerable.eqv J)).inverse

/--
Checking exactness of limits of shape `Discrete ℕ` and `Discrete J` for finite `J` is enough for
countable AB4\*.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant798bc32a3eca8fd73f2b088310c64b3652fb4569ddd6ab31276590649f6a9d0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant798bc32a3eca8fd73f2b088310c64b3652fb4569ddd6ab31276590649f6a9d0d.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `396f007c83383599ab8260ba35e87f79d5ddce34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
