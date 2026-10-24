# zpow_left_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32ded6033888ce91540a3840d6abe3e944cdeb17",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a978ef9-e689-3fee-4c03-88756d1bfeef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44818ab8-4ff3-2e31-de84-bfd9326b10af",
  "kind": "lemma",
  "lexical_name": "zpow_left_injective",
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
  "slug": "zpow-left-injective--3c9b06a278574be38da24598",
  "source": {
    "blob": "32ded6033888ce91540a3840d6abe3e944cdeb17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 62,
    "path": "GRWTSK/Algebra/GroupTheory/Torsion/Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c9b06a278574be38da24598e007306b64148f26111a53053d182109b8e07fe4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Torsion/Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44818ab8-4ff3-2e31-de84-bfd9326b10af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zpow_left_injective : ∀ {n : ℤ}, n ≠ 0 → Injective fun a : G ↦ a ^ n
  | (n + 1 : ℕ), _ => by
    simpa [← Int.natCast_one, ← Int.natCast_add] using pow_left_injective n.succ_ne_zero
  | .negSucc n, _ => by simpa using inv_injective.comp (pow_left_injective n.succ_ne_zero)

@[to_additive zsmul_right_inj]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Torsion/Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Torsion/Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32ded6033888ce91540a3840d6abe3e944cdeb17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
