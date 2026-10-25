# leftInverse_rangeFactorization_iff_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c4042b177d3e5dc254fb8458aa369399eebccd7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 971,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58ee805279ace383bdb039607a2d9620f20cf338903f89a0523505af5c1bab7d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d11a4aa2-da2f-b1f4-5706-986c7595c721",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f3649c17-38eb-6629-d810-2b1fba6fdbde",
  "kind": "lemma",
  "lexical_name": "leftInverse_rangeFactorization_iff_injective",
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
  "slug": "leftinverse-rangefactorization-iff-injective--ef2fcacc8174194eabd715f5",
  "source": {
    "blob": "0c4042b177d3e5dc254fb8458aa369399eebccd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 975,
    "line": 971,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variant58ee805279ace383bdb039607a2d9620f20cf338903f89a0523505af5c1bab7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef2fcacc8174194eabd715f5e1ceea98d9007a74daafeb41ece0d47e4151f6a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variant58ee805279ace383bdb039607a2d9620f20cf338903f89a0523505af5c1bab7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3649c17-38eb-6629-d810-2b1fba6fdbde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 971–975.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leftInverse_rangeFactorization_iff_injective (f : α → β) :
    LeftInverse (rangeSplitting f) (rangeFactorization f) ↔ f.Injective :=
  ⟨(rangeFactorization_injective.mp ·.injective),
    fun h ↦ congrFun' (rightInverse_rangeSplitting h).id⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variant58ee805279ace383bdb039607a2d9620f20cf338903f89a0523505af5c1bab7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variant58ee805279ace383bdb039607a2d9620f20cf338903f89a0523505af5c1bab7d.lean#L971).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c4042b177d3e5dc254fb8458aa369399eebccd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
