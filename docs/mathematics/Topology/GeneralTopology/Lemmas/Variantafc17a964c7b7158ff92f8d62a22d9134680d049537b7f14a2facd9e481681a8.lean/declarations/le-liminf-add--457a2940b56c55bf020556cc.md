# le_liminf_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c05325f9aa7d9d4fd41ba864b7eb4460e43e9255",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 260,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afc17a964c7b7158ff92f8d62a22d9134680d049537b7f14a2facd9e481681a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e7d32e4-3913-a4f3-9987-1c3d1a092339",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aaeea97c-b61f-9ff9-55da-e505b4e80ddf",
  "kind": "lemma",
  "lexical_name": "le_liminf_add",
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
  "slug": "le-liminf-add--457a2940b56c55bf020556cc",
  "source": {
    "blob": "c05325f9aa7d9d4fd41ba864b7eb4460e43e9255",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 260,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantafc17a964c7b7158ff92f8d62a22d9134680d049537b7f14a2facd9e481681a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:457a2940b56c55bf020556cca0d316e5b3c84dd727316d69118917e10dc1f8ec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variantafc17a964c7b7158ff92f8d62a22d9134680d049537b7f14a2facd9e481681a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aaeea97c-b61f-9ff9-55da-e505b4e80ddf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_liminf_add : (liminf u f) + (liminf v f) ≤ liminf (u + v) f := by
  refine add_le_of_forall_lt fun a a_u b b_v ↦ (le_liminf_iff).2 fun c c_ab ↦ ?_
  filter_upwards [eventually_lt_of_lt_liminf a_u, eventually_lt_of_lt_liminf b_v] with x a_x b_x
  exact c_ab.trans (add_lt_add a_x b_x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variantafc17a964c7b7158ff92f8d62a22d9134680d049537b7f14a2facd9e481681a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variantafc17a964c7b7158ff92f8d62a22d9134680d049537b7f14a2facd9e481681a8.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c05325f9aa7d9d4fd41ba864b7eb4460e43e9255` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
