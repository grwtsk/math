# BaireSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1deec73cb6f7b8ccd0b7cfb3b7c10c2f80d5d1538e175050fd6d32b7b513d01f",
  "kind": "class",
  "lexical_name": "BaireSpace",
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
  "slug": "bairespace--6a2f55b53c3fd72d85e05bf9",
  "source": {
    "blob": "326105821a5a8ce5041ccf8dce22779bd55fa923",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 239,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6a16294b9ce69e6f245f45abc59d45db011f2a1c545b4d5d403ccaca5b17c99c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a2f55b53c3fd72d85e05bf91bc297ac4b74c783862ddc3036b65b90fa61b4f8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant6a16294b9ce69e6f245f45abc59d45db011f2a1c545b4d5d403ccaca5b17c99c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1deec73cb6f7b8ccd0b7cfb3b7c10c2f80d5d1538e175050fd6d32b7b513d01f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class BaireSpace (X : Type*) [TopologicalSpace X] : Prop where
  baire_property : ∀ f : ℕ → Set X, (∀ n, IsOpen (f n)) → (∀ n, Dense (f n)) → Dense (⋂ n, f n)

/-- A one-field structure wrapper for `X` with the topology coinduced from `t`. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant6a16294b9ce69e6f245f45abc59d45db011f2a1c545b4d5d403ccaca5b17c99c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant6a16294b9ce69e6f245f45abc59d45db011f2a1c545b4d5d403ccaca5b17c99c.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `326105821a5a8ce5041ccf8dce22779bd55fa923` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
