# prod_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c07ab404-607f-96ba-a0ff-1bc81c9af5a4",
  "kind": "theorem",
  "lexical_name": "prod_apply",
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
  "slug": "prod-apply--0e9e2e3577284b4c0dec07e3",
  "source": {
    "blob": "7a58c5304e2ff3ea638f999de8e3bb817156c0ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 393,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Algebra/Variant0d771e8ee71cb6ccfbd39f718bde7d729793349c760a6e065858b8f319515237.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e9e2e3577284b4c0dec07e38f38c86c3e07be26ee6b881ed0c405bd91cdd903",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Algebra/Variant0d771e8ee71cb6ccfbd39f718bde7d729793349c760a6e065858b8f319515237.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c07ab404-607f-96ba-a0ff-1bc81c9af5a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_apply [CommMonoid β] [ContinuousMul β] {ι : Type*} (s : Finset ι) (f : ι → C(α, β))
    (a : α) : (∏ i in s, f i) a = ∏ i in s, f i a := by simp
#align continuous_map.prod_apply ContinuousMap.prod_apply
#align continuous_map.sum_apply ContinuousMap.sum_apply

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Algebra/Variant0d771e8ee71cb6ccfbd39f718bde7d729793349c760a6e065858b8f319515237.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Algebra/Variant0d771e8ee71cb6ccfbd39f718bde7d729793349c760a6e065858b8f319515237.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a58c5304e2ff3ea638f999de8e3bb817156c0ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
