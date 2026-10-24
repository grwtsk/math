# Multipliable.tprod_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb6f7cd58433e2cf73a3ad4d7c4118d5a3e4e547",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 284,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d91e3da6a4e70fa3b818f9a4f558f09b5358c3917b4d1c7ed45485ef3ce232c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6a3fc9a-06b4-e010-e4f0-5e11bb131603",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e12c4e14-b1d8-5ab9-a683-f52aa0a8c17a",
  "kind": "theorem",
  "lexical_name": "Multipliable.tprod_eq_one_iff",
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
  "slug": "multipliable-tprod-eq-one-iff--04eb34c5be7956c922480aa2",
  "source": {
    "blob": "eb6f7cd58433e2cf73a3ad4d7c4118d5a3e4e547",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 284,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Order/Variantd91e3da6a4e70fa3b818f9a4f558f09b5358c3917b4d1c7ed45485ef3ce232c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04eb34c5be7956c922480aa2fd016bf29b991ee9ca841d080334a93e22a7a39a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Order/Variantd91e3da6a4e70fa3b818f9a4f558f09b5358c3917b4d1c7ed45485ef3ce232c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e12c4e14-b1d8-5ab9-a683-f52aa0a8c17a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Multipliable.tprod_eq_one_iff (hf : Multipliable f) :
    ∏' i, f i = 1 ↔ ∀ x, f x = 1 := by
  rw [← hasProd_one_iff, hf.hasProd_iff]

@[deprecated (since := "2025-04-12")] alias tsum_eq_zero_iff := Summable.tsum_eq_zero_iff
@[to_additive existing, deprecated (since := "2025-04-12")] alias tprod_eq_one_iff :=
  Multipliable.tprod_eq_one_iff

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Order/Variantd91e3da6a4e70fa3b818f9a4f558f09b5358c3917b4d1c7ed45485ef3ce232c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Order/Variantd91e3da6a4e70fa3b818f9a4f558f09b5358c3917b4d1c7ed45485ef3ce232c0.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb6f7cd58433e2cf73a3ad4d7c4118d5a3e4e547` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
