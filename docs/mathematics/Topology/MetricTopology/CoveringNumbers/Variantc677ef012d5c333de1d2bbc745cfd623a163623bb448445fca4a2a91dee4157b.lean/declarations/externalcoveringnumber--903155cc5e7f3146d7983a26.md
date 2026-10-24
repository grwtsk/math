# externalCoveringNumber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62171ff66fd794f34f4ec4d97523eefa283f9920eae2ed1adea3d43e3147260d",
  "kind": "def",
  "lexical_name": "externalCoveringNumber",
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
  "slug": "externalcoveringnumber--903155cc5e7f3146d7983a26",
  "source": {
    "blob": "ac4085f88cc6ecc5c1d0a0146b17defb3bfb1d0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 71,
    "path": "GRWTSK/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:903155cc5e7f3146d7983a26558a3ed95a4208949c607f1783a1262744d1dca8",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62171ff66fd794f34f4ec4d97523eefa283f9920eae2ed1adea3d43e3147260d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def externalCoveringNumber (ε : ℝ≥0) (A : Set X) : ℕ∞ :=
  ⨅ (C : Set X) (_ : IsCover ε A C), C.encard

/-- The covering number (or internal covering number) of a set `A` for radius `ε` is
the minimal cardinality (in `ℕ∞`) of an `ε`-cover contained in `A`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac4085f88cc6ecc5c1d0a0146b17defb3bfb1d0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
