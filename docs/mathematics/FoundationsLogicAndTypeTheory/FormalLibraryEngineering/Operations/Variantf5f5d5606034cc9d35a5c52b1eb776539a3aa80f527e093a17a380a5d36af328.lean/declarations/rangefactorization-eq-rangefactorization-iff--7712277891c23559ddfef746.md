# rangeFactorization_eq_rangeFactorization_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fc4239d-b457-302a-a743-e00e284f545c",
  "kind": "lemma",
  "lexical_name": "rangeFactorization_eq_rangeFactorization_iff",
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
  "slug": "rangefactorization-eq-rangefactorization-iff--7712277891c23559ddfef746",
  "source": {
    "blob": "e96fd432c236de9ac2c9d56ed7cb3f1f2e36dfc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 200,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operations/Variantf5f5d5606034cc9d35a5c52b1eb776539a3aa80f527e093a17a380a5d36af328.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7712277891c23559ddfef74609aea2c00c0ba2911bec8d72abd52aaeee8eedb2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operations/Variantf5f5d5606034cc9d35a5c52b1eb776539a3aa80f527e093a17a380a5d36af328.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fc4239d-b457-302a-a743-e00e284f545c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma rangeFactorization_eq_rangeFactorization_iff {ι : Sort*} {α : Type*} {f : ι → α}
    (a b : ι) : Set.rangeFactorization f a = Set.rangeFactorization f b ↔ f a = f b := by
  simp [Set.rangeFactorization]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operations/Variantf5f5d5606034cc9d35a5c52b1eb776539a3aa80f527e093a17a380a5d36af328.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operations/Variantf5f5d5606034cc9d35a5c52b1eb776539a3aa80f527e093a17a380a5d36af328.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e96fd432c236de9ac2c9d56ed7cb3f1f2e36dfc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
