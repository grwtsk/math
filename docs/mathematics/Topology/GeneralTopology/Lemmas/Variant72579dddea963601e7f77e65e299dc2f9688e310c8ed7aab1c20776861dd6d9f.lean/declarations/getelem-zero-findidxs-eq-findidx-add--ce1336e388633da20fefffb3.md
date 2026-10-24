# getElem_zero_findIdxs_eq_findIdx_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:520caab2-1456-47e9-c02a-7c2a65334185",
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
  "slug": "getelem-zero-findidxs-eq-findidx-add--ce1336e388633da20fefffb3",
  "source": {
    "blob": "088bb68e57c76b3761bfb5ad01ff3a9f4bdc2362",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 567,
    "line": 564,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant72579dddea963601e7f77e65e299dc2f9688e310c8ed7aab1c20776861dd6d9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce1336e388633da20fefffb3e1edacd47e0cd554a8644861742366cdf6f541b4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant72579dddea963601e7f77e65e299dc2f9688e310c8ed7aab1c20776861dd6d9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:520caab2-1456-47e9-c02a-7c2a65334185`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 564–567.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem_zero_findIdxs_eq_findIdx_add (h : 0 < ((xs : List α).findIdxs p s).length) :
    (xs.findIdxs p s)[0] = xs.findIdx p + s := by induction xs generalizing s <;> grind

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant72579dddea963601e7f77e65e299dc2f9688e310c8ed7aab1c20776861dd6d9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant72579dddea963601e7f77e65e299dc2f9688e310c8ed7aab1c20776861dd6d9f.lean#L564).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `088bb68e57c76b3761bfb5ad01ff3a9f4bdc2362` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
