# pullbackBiprodInlBiprodInr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ff2c34ddc07fee7fd4f5853e319683bfe6baf0b584866c0ea108fca7a864e0c",
  "kind": "def",
  "lexical_name": "pullbackBiprodInlBiprodInr",
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
  "slug": "pullbackbiprodinlbiprodinr--9e7f2795c19eac1b263d76ae",
  "source": {
    "blob": "c095f5d742d6fd51df32656687f120cfba7dcdfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 638,
    "line": 632,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant291f1e75a9ca59ce52589f175f2e01d1b6356abc653af17ae81f0cccc8ba81e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e7f2795c19eac1b263d76aecdc7dd1d0adc3f445af9b3bd09e1e8c2b31f920f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant291f1e75a9ca59ce52589f175f2e01d1b6356abc653af17ae81f0cccc8ba81e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ff2c34ddc07fee7fd4f5853e319683bfe6baf0b584866c0ea108fca7a864e0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 632–638.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackBiprodInlBiprodInr [HasBinaryBiproduct X Y] :
    pullback (biprod.inl : X ⟶ _) (biprod.inr : Y ⟶ _) ≅ 0 :=
  limit.isoLimitCone ⟨_, (of_hasBinaryBiproduct X Y).isLimit⟩
#align category_theory.is_pullback.pullback_biprod_inl_biprod_inr CategoryTheory.IsPullback.pullbackBiprodInlBiprodInr

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant291f1e75a9ca59ce52589f175f2e01d1b6356abc653af17ae81f0cccc8ba81e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant291f1e75a9ca59ce52589f175f2e01d1b6356abc653af17ae81f0cccc8ba81e9.lean#L632).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c095f5d742d6fd51df32656687f120cfba7dcdfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
