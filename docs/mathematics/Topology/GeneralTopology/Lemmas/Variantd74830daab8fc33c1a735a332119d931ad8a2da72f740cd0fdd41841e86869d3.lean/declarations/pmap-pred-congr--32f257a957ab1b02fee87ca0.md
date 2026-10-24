# pmap_pred_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79eb718980a22c47c2e0176617481b9f8039acc2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1218,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d74830daab8fc33c1a735a332119d931ad8a2da72f740cd0fdd41841e86869d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04664cc0-5245-a645-d462-697b2e476639",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ec3b451-264d-4f3e-197c-939776ff9adc",
  "kind": "theorem",
  "lexical_name": "pmap_pred_congr",
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
  "slug": "pmap-pred-congr--32f257a957ab1b02fee87ca0",
  "source": {
    "blob": "79eb718980a22c47c2e0176617481b9f8039acc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1226,
    "line": 1218,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantd74830daab8fc33c1a735a332119d931ad8a2da72f740cd0fdd41841e86869d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32f257a957ab1b02fee87ca024c8798c96d0af71bcb432e29aa5a859af3a64ad",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variantd74830daab8fc33c1a735a332119d931ad8a2da72f740cd0fdd41841e86869d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ec3b451-264d-4f3e-197c-939776ff9adc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1218–1226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pmap_pred_congr {α : Type u}
    {p p' : α → Prop} (hp : ∀ x, p x ↔ p' x)
    {o o' : Option α} (ho : o = o')
    (h : ∀ x, o = some x → p x) : ∀ x, o' = some x → p' x := by
  intro y hy
  cases ho
  exact (hp y).mp (h y hy)

@[congr]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variantd74830daab8fc33c1a735a332119d931ad8a2da72f740cd0fdd41841e86869d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variantd74830daab8fc33c1a735a332119d931ad8a2da72f740cd0fdd41841e86869d3.lean#L1218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79eb718980a22c47c2e0176617481b9f8039acc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
