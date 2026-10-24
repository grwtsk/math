# toPushforwardOfIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79f0f869b448bb96db450285a323b7a8e0d835c9397cb2c651daa2eb6040c17d",
  "kind": "def",
  "lexical_name": "toPushforwardOfIso",
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
  "slug": "topushforwardofiso--3eb9a517e4895fe3240583ea",
  "source": {
    "blob": "624ac71332f87878b5a09ffb110b5adc6acb864c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 435,
    "path": "GRWTSK/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3eb9a517e4895fe3240583ea42cdb3d69d6ea4003935450ffaa4557a46802c0b",
  "verification": {
    "reference": "docs/verification/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79f0f869b448bb96db450285a323b7a8e0d835c9397cb2c651daa2eb6040c17d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toPushforwardOfIso {X Y : TopCat} (H : X ≅ Y) {ℱ : X.Presheaf C} {𝒢 : Y.Presheaf C}
    (α : H.hom _* ℱ ⟶ 𝒢) : ℱ ⟶ H.inv _* 𝒢 :=
  (presheafEquivOfIso _ H).toAdjunction.homEquiv ℱ 𝒢 α
set_option linter.uppercaseLean3 false in
#align Top.presheaf.to_pushforward_of_iso TopCat.Presheaf.toPushforwardOfIso

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624ac71332f87878b5a09ffb110b5adc6acb864c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
