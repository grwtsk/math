# cofinite_inf_principal_neBot_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79e4b97c-396b-70f6-af04-f7e9cd81aa34",
  "kind": "lemma",
  "lexical_name": "cofinite_inf_principal_neBot_iff",
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
  "slug": "cofinite-inf-principal-nebot-iff--5f860fd5d049c06f9bae726b",
  "source": {
    "blob": "89312a85d0510c3cc3094e43326cdfa4a8027674",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/Cofinite/Variantf47f12cff779b54f4b0f7418405ea66d1f424189cd14a1e2cc42aa31bd27054b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f860fd5d049c06f9bae726bceca4f0249c41b26b3d7f5154141520bbff6b9fd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Cofinite/Variantf47f12cff779b54f4b0f7418405ea66d1f424189cd14a1e2cc42aa31bd27054b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79e4b97c-396b-70f6-af04-f7e9cd81aa34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cofinite_inf_principal_neBot_iff {s : Set α} : (cofinite ⊓ 𝓟 s).NeBot ↔ s.Infinite :=
  frequently_mem_iff_neBot.symm.trans frequently_cofinite_mem_iff_infinite

alias ⟨_, _root_.Set.Infinite.cofinite_inf_principal_neBot⟩ := cofinite_inf_principal_neBot_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Cofinite/Variantf47f12cff779b54f4b0f7418405ea66d1f424189cd14a1e2cc42aa31bd27054b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Cofinite/Variantf47f12cff779b54f4b0f7418405ea66d1f424189cd14a1e2cc42aa31bd27054b.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89312a85d0510c3cc3094e43326cdfa4a8027674` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
