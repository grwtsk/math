# getElem_zero_findIdxs_eq_findIdx_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d5b2863-8c78-ff40-3813-7ae9fa897108",
  "kind": "theorem",
  "lexical_name": "getElem_zero_findIdxs_eq_findIdx_add",
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
  "slug": "getelem-zero-findidxs-eq-findidx-add--2e0cb2ad6cf241cbfafa5eb6",
  "source": {
    "blob": "6e76f03e72fb833bd030093498832393e7816fed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 610,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant9e9699712a40bd59c8d878c9dd9e0d54a82cbde3e117a4c7fdfe7dab37b5e19a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e0cb2ad6cf241cbfafa5eb61b429bc727c9360ee39ceab28a39033b0234ba85",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant9e9699712a40bd59c8d878c9dd9e0d54a82cbde3e117a4c7fdfe7dab37b5e19a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d5b2863-8c78-ff40-3813-7ae9fa897108`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem_zero_findIdxs_eq_findIdx_add (h : 0 < ((xs : List α).findIdxs p s).length) :
    (xs.findIdxs p s)[0] = xs.findIdx p + s := by induction xs generalizing s <;> grind

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant9e9699712a40bd59c8d878c9dd9e0d54a82cbde3e117a4c7fdfe7dab37b5e19a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant9e9699712a40bd59c8d878c9dd9e0d54a82cbde3e117a4c7fdfe7dab37b5e19a.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e76f03e72fb833bd030093498832393e7816fed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
