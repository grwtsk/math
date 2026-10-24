# IsLocalExtr.congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d36765c-edb3-16a9-f06a-a4dec93e9abb",
  "kind": "theorem",
  "lexical_name": "IsLocalExtr.congr",
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
  "slug": "islocalextr-congr--08f5db33b2517f253c200d22",
  "source": {
    "blob": "2f51320b6a5dde5f57aad953d80d975465ad8bd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 551,
    "path": "GRWTSK/Topology/GeneralTopology/LocalExtr/Variante16fe2ff8b11f950122c606f334d1c82fb4b391b3cbc2439f405185829c02e2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08f5db33b2517f253c200d2254a2b6a605a635656f64a4707f1c03352eb72cf3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalExtr/Variante16fe2ff8b11f950122c606f334d1c82fb4b391b3cbc2439f405185829c02e2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d36765c-edb3-16a9-f06a-a4dec93e9abb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem IsLocalExtr.congr {f g : α → β} {a : α} (h : IsLocalExtr f a) (heq : f =ᶠ[𝓝 a] g) :
    IsLocalExtr g a :=
  h.congr heq heq.eq_of_nhds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalExtr/Variante16fe2ff8b11f950122c606f334d1c82fb4b391b3cbc2439f405185829c02e2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalExtr/Variante16fe2ff8b11f950122c606f334d1c82fb4b391b3cbc2439f405185829c02e2a.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f51320b6a5dde5f57aad953d80d975465ad8bd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
