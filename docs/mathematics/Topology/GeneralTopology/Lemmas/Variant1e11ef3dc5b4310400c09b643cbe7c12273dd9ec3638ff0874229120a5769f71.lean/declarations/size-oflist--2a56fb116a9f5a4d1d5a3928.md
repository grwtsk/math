# size_ofList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9e786b4-5eb0-8008-dfa5-6af00606bf91",
  "kind": "theorem",
  "lexical_name": "size_ofList",
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
  "slug": "size-oflist--2a56fb116a9f5a4d1d5a3928",
  "source": {
    "blob": "344b8a5aa7a9c121eeddb4bacc0a74c475cf1e63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1115,
    "line": 1111,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant1e11ef3dc5b4310400c09b643cbe7c12273dd9ec3638ff0874229120a5769f71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a56fb116a9f5a4d1d5a3928bc624fc8aa2281902c7d5d98fdb4b894bc109c19",
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

Occurrence: `result:c9e786b4-5eb0-8008-dfa5-6af00606bf91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1111–1115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem size_ofList [TransCmp cmp] {l : List α}
    (distinct : l.Pairwise (fun a b => ¬ cmp a b = .eq)) :
    (ofList l cmp).size = l.length :=
  ExtTreeMap.size_unitOfList distinct

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant1e11ef3dc5b4310400c09b643cbe7c12273dd9ec3638ff0874229120a5769f71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant1e11ef3dc5b4310400c09b643cbe7c12273dd9ec3638ff0874229120a5769f71.lean#L1111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `344b8a5aa7a9c121eeddb4bacc0a74c475cf1e63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
