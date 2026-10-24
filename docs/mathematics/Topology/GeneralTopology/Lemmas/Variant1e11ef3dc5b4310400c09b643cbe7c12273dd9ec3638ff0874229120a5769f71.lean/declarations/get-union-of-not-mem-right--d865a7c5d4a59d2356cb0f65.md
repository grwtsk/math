# get_union_of_not_mem_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f9c5f35-95ee-7aea-dddc-dea7acd51072",
  "kind": "theorem",
  "lexical_name": "get_union_of_not_mem_right",
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
  "slug": "get-union-of-not-mem-right--d865a7c5d4a59d2356cb0f65",
  "source": {
    "blob": "344b8a5aa7a9c121eeddb4bacc0a74c475cf1e63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 526,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant1e11ef3dc5b4310400c09b643cbe7c12273dd9ec3638ff0874229120a5769f71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d865a7c5d4a59d2356cb0f6570247e64edb6cc08500af830980a757f82cc9fc3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant1e11ef3dc5b4310400c09b643cbe7c12273dd9ec3638ff0874229120a5769f71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f9c5f35-95ee-7aea-dddc-dea7acd51072`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem get_union_of_not_mem_right [TransCmp cmp]
    {k : α} (not_mem : ¬k ∈ t₂) {h'} :
    (t₁ ∪ t₂).get k h' = t₁.get k (mem_of_mem_union_of_not_mem_right h' not_mem) :=
  ExtTreeMap.getKey_union_of_not_mem_right not_mem

/- getD -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant1e11ef3dc5b4310400c09b643cbe7c12273dd9ec3638ff0874229120a5769f71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant1e11ef3dc5b4310400c09b643cbe7c12273dd9ec3638ff0874229120a5769f71.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `344b8a5aa7a9c121eeddb4bacc0a74c475cf1e63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
