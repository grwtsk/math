# toNormedDual_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b21c59208a4359b18957f25189f000567b3df91e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9318492-912a-a2f6-1d13-1bd2f9766d2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8370ded-ef4d-426d-0a25-2deed46d16a9",
  "kind": "theorem",
  "lexical_name": "toNormedDual_eq_iff",
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
  "slug": "tonormeddual-eq-iff--31eacdc2eb537a6c55a19098",
  "source": {
    "blob": "b21c59208a4359b18957f25189f000567b3df91e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 175,
    "path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31eacdc2eb537a6c55a19098d6f5a01c75f55c833b9033c080ccc0e3aee2c6d1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8370ded-ef4d-426d-0a25-2deed46d16a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toNormedDual_eq_iff (x' y' : WeakDual 𝕜 E) : toNormedDual x' = toNormedDual y' ↔ x' = y' :=
  Function.Injective.eq_iff <| LinearEquiv.injective toNormedDual
#align weak_dual.to_normed_dual_eq_iff WeakDual.toNormedDual_eq_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b21c59208a4359b18957f25189f000567b3df91e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
