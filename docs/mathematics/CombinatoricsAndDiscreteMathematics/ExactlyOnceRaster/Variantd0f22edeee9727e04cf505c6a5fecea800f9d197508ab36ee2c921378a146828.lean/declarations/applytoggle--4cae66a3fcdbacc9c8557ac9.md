# applyToggle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef880e11e6a37e5f41a81b00fbe5d1ee5f5de5c3441531f544c37c23ee2cc33e",
  "kind": "def",
  "lexical_name": "applyToggle",
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
  "slug": "applytoggle--4cae66a3fcdbacc9c8557ac9",
  "source": {
    "blob": "133e4b68a491fbad11c19fb4b45a20329a82b13b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 142,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variantd0f22edeee9727e04cf505c6a5fecea800f9d197508ab36ee2c921378a146828.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cae66a3fcdbacc9c8557ac941c502c3ddda947ca346bb138d83047b5c87334b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variantd0f22edeee9727e04cf505c6a5fecea800f9d197508ab36ee2c921378a146828.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef880e11e6a37e5f41a81b00fbe5d1ee5f5de5c3441531f544c37c23ee2cc33e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applyToggle
    [DecidableEq Cell]
    [DecidableEq Event]
    (packet : ConditionalEvent Cell Event)
    (state : RasterState Cell Event) :
    RasterState Cell Event :=
  let fires := packet.fires state.ledger
  {
    raster := {
      bit := fun cell ↦
        if cell = packet.cell then
          Bool.xor (state.raster.bit cell) fires
        else
          state.raster.bit cell
    }
    ledger := updateEventLedger packet state.ledger
  }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variantd0f22edeee9727e04cf505c6a5fecea800f9d197508ab36ee2c921378a146828.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variantd0f22edeee9727e04cf505c6a5fecea800f9d197508ab36ee2c921378a146828.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `133e4b68a491fbad11c19fb4b45a20329a82b13b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
