# fundamentalGroupToMulOpposite_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5a47dfa109fb307cf105a6bfef0da78a03d6d21",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 656,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47b44da5cc6f4d708c6d234a8abceea6a6852da69cd5e25c70c8e34deda9b47c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c78994b-bd71-573c-981a-d709660821e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62abb64e-fcfe-0bf5-3db0-762951de5d20",
  "kind": "theorem",
  "lexical_name": "fundamentalGroupToMulOpposite_eq_one_iff",
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
  "slug": "fundamentalgrouptomulopposite-eq-one-iff--502533cf1264d35b7ef4399b",
  "source": {
    "blob": "f5a47dfa109fb307cf105a6bfef0da78a03d6d21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 661,
    "line": 656,
    "path": "GRWTSK/Topology/AlgebraicTopology/Lifting/Variant47b44da5cc6f4d708c6d234a8abceea6a6852da69cd5e25c70c8e34deda9b47c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:502533cf1264d35b7ef4399b9ea5e8ad66564d31e603f667cb44a4c497ec51f9",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Lifting/Variant47b44da5cc6f4d708c6d234a8abceea6a6852da69cd5e25c70c8e34deda9b47c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62abb64e-fcfe-0bf5-3db0-762951de5d20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 656–661.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fundamentalGroupToMulOpposite_eq_one_iff :
    hp.fundamentalGroupToMulOpposite e γ = 1 ↔ hp.isCoveringMap.monodromy γ e = e where
  mp h := Subtype.ext <| by rw [← hp.unop_fundamentalGroupToMulOpposite_smul, h]; apply one_smul
  mpr h := MulOpposite.unop_injective <| hp.isCancelSMul.right_cancel _ _ e.1 <| by
    simp [fundamentalGroupToMulOpposite, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Lifting/Variant47b44da5cc6f4d708c6d234a8abceea6a6852da69cd5e25c70c8e34deda9b47c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Lifting/Variant47b44da5cc6f4d708c6d234a8abceea6a6852da69cd5e25c70c8e34deda9b47c.lean#L656).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5a47dfa109fb307cf105a6bfef0da78a03d6d21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
