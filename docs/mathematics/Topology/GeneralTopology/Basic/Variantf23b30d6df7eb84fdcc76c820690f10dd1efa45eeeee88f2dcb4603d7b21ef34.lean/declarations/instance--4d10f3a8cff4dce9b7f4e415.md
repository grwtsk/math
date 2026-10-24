# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1db7cb45e37a5e3a62086a482021bfb3a66d0e6472a5657ae4d5c5166e35f73f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--4d10f3a8cff4dce9b7f4e415",
  "source": {
    "blob": "951fa5e48c91bf23b9f272cd1d0e38dfa66a1a62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 690,
    "line": 688,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf23b30d6df7eb84fdcc76c820690f10dd1efa45eeeee88f2dcb4603d7b21ef34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d10f3a8cff4dce9b7f4e4159029a76bbad869d7ac26619e51958e2ec5ac8104",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf23b30d6df7eb84fdcc76c820690f10dd1efa45eeeee88f2dcb4603d7b21ef34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1db7cb45e37a5e3a62086a482021bfb3a66d0e6472a5657ae4d5c5166e35f73f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 688–690.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [TopologicalSpace β] [ConnectedSpace α] [ConnectedSpace β] : ConnectedSpace (α × β) :=
  ⟨inferInstance⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf23b30d6df7eb84fdcc76c820690f10dd1efa45eeeee88f2dcb4603d7b21ef34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf23b30d6df7eb84fdcc76c820690f10dd1efa45eeeee88f2dcb4603d7b21ef34.lean#L688).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `951fa5e48c91bf23b9f272cd1d0e38dfa66a1a62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
