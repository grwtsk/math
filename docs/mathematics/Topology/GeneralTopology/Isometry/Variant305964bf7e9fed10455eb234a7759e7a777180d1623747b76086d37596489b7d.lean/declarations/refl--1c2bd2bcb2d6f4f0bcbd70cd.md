# refl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c3acf4a3c345698d1ca63d7e5bdb4d4b8af17c081ced4bad54a53bd56d1f9a8",
  "kind": "def",
  "lexical_name": "refl",
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
  "slug": "refl--1c2bd2bcb2d6f4f0bcbd70cd",
  "source": {
    "blob": "7618424e17a1694ecefafd4d4e8d481ec98c3b04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 472,
    "line": 468,
    "path": "GRWTSK/Topology/GeneralTopology/Isometry/Variant305964bf7e9fed10455eb234a7759e7a777180d1623747b76086d37596489b7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c2bd2bcb2d6f4f0bcbd70cd090831b4ea911975117fdd9d542e6f2acfc886e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Isometry/Variant305964bf7e9fed10455eb234a7759e7a777180d1623747b76086d37596489b7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c3acf4a3c345698d1ca63d7e5bdb4d4b8af17c081ced4bad54a53bd56d1f9a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def refl : P ≃ᵃⁱ[𝕜] P :=
  ⟨AffineEquiv.refl 𝕜 P, fun _ => rfl⟩

variable {𝕜 P}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Isometry/Variant305964bf7e9fed10455eb234a7759e7a777180d1623747b76086d37596489b7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Isometry/Variant305964bf7e9fed10455eb234a7759e7a777180d1623747b76086d37596489b7d.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7618424e17a1694ecefafd4d4e8d481ec98c3b04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
