# instNeBotTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a6e4989c9852686c05037c0c0f51d4fa0a07c9b291591acf3aa2558fd2bf39b",
  "kind": "instance",
  "lexical_name": "instNeBotTop",
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
  "slug": "instnebottop--7dccdc4a57d775107ab937c9",
  "source": {
    "blob": "f939f7ba65de37bf6f597e3961e24e97283a5401",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 407,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0124915a4e70bd90dce9216890300e53ae2fad9fab280b33412c690ac1901b28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7dccdc4a57d775107ab937c9c4a2c682c3ec37c894a9b9be07fe2922bd912263",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0124915a4e70bd90dce9216890300e53ae2fad9fab280b33412c690ac1901b28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a6e4989c9852686c05037c0c0f51d4fa0a07c9b291591acf3aa2558fd2bf39b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNeBotTop [Nonempty α] : NeBot (⊤ : Filter α) :=
  forall_mem_nonempty_iff_neBot.1 fun s hs => by rwa [mem_top.1 hs, ← nonempty_iff_univ_nonempty]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0124915a4e70bd90dce9216890300e53ae2fad9fab280b33412c690ac1901b28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0124915a4e70bd90dce9216890300e53ae2fad9fab280b33412c690ac1901b28.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f939f7ba65de37bf6f597e3961e24e97283a5401` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
