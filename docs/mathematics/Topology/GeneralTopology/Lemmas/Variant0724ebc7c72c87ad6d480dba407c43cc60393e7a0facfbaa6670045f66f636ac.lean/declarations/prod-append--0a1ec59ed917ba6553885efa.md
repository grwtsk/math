# prod_append

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "519a54b75079a3acb036a212f7303f8d497ecba1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1883,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef12f664-97b5-9a29-37a5-69dddfc4f20d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d86eb0b-b6a6-9534-8b54-802f77e1d5b8",
  "kind": "theorem",
  "lexical_name": "prod_append",
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
  "slug": "prod-append--0a1ec59ed917ba6553885efa",
  "source": {
    "blob": "519a54b75079a3acb036a212f7303f8d497ecba1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1887,
    "line": 1883,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a1ec59ed917ba6553885efa0d9d2ae7af1da4444fe84b165a7dbf6d7757dd30",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d86eb0b-b6a6-9534-8b54-802f77e1d5b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1883–1887.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_append [Mul α] [One α] [Std.LawfulLeftIdentity (α := α) (· * ·) 1]
    [Std.Associative (α := α) (· * ·)] {l₁ l₂ : List α} : (l₁ ++ l₂).prod = l₁.prod * l₂.prod := by
  induction l₁ generalizing l₂ <;> simp_all [Std.Associative.assoc, Std.LawfulLeftIdentity.left_id]

@[simp, grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean#L1883).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `519a54b75079a3acb036a212f7303f8d497ecba1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
