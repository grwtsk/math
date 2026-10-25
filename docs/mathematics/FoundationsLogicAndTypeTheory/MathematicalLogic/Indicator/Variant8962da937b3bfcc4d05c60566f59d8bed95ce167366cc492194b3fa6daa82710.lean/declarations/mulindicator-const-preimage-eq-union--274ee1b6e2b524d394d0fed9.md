# mulIndicator_const_preimage_eq_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4aac411-99f2-b714-c390-3eecd9dc87c1",
  "kind": "lemma",
  "lexical_name": "mulIndicator_const_preimage_eq_union",
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
  "slug": "mulindicator-const-preimage-eq-union--274ee1b6e2b524d394d0fed9",
  "source": {
    "blob": "249d04717fc0528c6448ef34038f9137e12c7216",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 260,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:274ee1b6e2b524d394d0fed96194a45719fa66df729f248d0ed57f30eddc9273",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4aac411-99f2-b714-c390-3eecd9dc87c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mulIndicator_const_preimage_eq_union (U : Set α) (s : Set M) (a : M) [Decidable (a ∈ s)]
    [Decidable ((1 : M) ∈ s)] : (U.mulIndicator fun _ => a) ⁻¹' s =
      (if a ∈ s then U else ∅) ∪ if (1 : M) ∈ s then Uᶜ else ∅ := by
  rw [mulIndicator_preimage, Pi.one_def, Set.preimage_const, preimage_const]
  split_ifs <;> simp [← compl_eq_univ_sdiff]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant8962da937b3bfcc4d05c60566f59d8bed95ce167366cc492194b3fa6daa82710.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `249d04717fc0528c6448ef34038f9137e12c7216` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
