# isRightRegular_of_rightCancelSemigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b498aa333866c7f3c79d92c79c98a3789ca9c4ae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 354,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d7beb8c-2d4a-38f2-14be-1f0e0b1939ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef30ab64-28ef-f1cf-e346-4a1f88cad345",
  "kind": "theorem",
  "lexical_name": "isRightRegular_of_rightCancelSemigroup",
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
  "slug": "isrightregular-of-rightcancelsemigroup--87448949493ebc79bd1eab3b",
  "source": {
    "blob": "b498aa333866c7f3c79d92c79c98a3789ca9c4ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 354,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87448949493ebc79bd1eab3bc92348039c2a309e3bbce3b808e063ec6478d620",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef30ab64-28ef-f1cf-e346-4a1f88cad345`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isRightRegular_of_rightCancelSemigroup [RightCancelSemigroup R]
    (g : R) : IsRightRegular g :=
  mul_left_injective g
#align is_right_regular_of_right_cancel_semigroup isRightRegular_of_rightCancelSemigroup
#align is_add_right_regular_of_right_cancel_add_semigroup   isAddRightRegular_of_addRightCancelSemigroup

section CancelMonoid

variable [CancelMonoid R]

/-- Elements of a cancel monoid are regular.  Cancel semigroups do not appear to exist. -/
@[to_additive "Elements of an add cancel monoid are regular.
Add cancel semigroups do not appear to exist."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b498aa333866c7f3c79d92c79c98a3789ca9c4ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
