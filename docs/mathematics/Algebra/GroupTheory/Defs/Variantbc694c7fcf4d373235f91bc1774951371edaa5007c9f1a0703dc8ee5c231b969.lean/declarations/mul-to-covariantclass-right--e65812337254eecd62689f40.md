# Mul.to_covariantClass_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55de55effc470ae25abb351cc847872defdc3f54",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86cbf318-cfa0-bbb0-4451-8f0ac24e6740",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5de992d5-a7ab-ede4-01d3-de734bd2f23f",
  "kind": "theorem",
  "lexical_name": "Mul.to_covariantClass_right",
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
  "slug": "mul-to-covariantclass-right--e65812337254eecd62689f40",
  "source": {
    "blob": "55de55effc470ae25abb351cc847872defdc3f54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 77,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e65812337254eecd62689f40a7b9857b75aa95a5285b198cdcfa93cf25ac7650",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5de992d5-a7ab-ede4-01d3-de734bd2f23f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Mul.to_covariantClass_right (M : Type*) [Mul M] [PartialOrder M]
    [CovariantClass M M (swap (· * ·)) (· < ·)] :
    CovariantClass M M (swap (· * ·)) (· ≤ ·) :=
  ⟨covariant_le_of_covariant_lt _ _ _ CovariantClass.elim⟩
#align has_mul.to_covariant_class_right Mul.to_covariantClass_right
#align has_add.to_covariant_class_right Add.to_covariantClass_right

end OrderedInstances

set_option linter.deprecated false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55de55effc470ae25abb351cc847872defdc3f54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
