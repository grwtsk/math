# oscillation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6d2d51553b5a2a0455915a33b5752829bc568d53ebcc321a70ac7a1517da257",
  "kind": "def",
  "lexical_name": "oscillation",
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
  "slug": "oscillation--a60aca47f688fa2c531038e5",
  "source": {
    "blob": "8742b162cd95ea64975d01991e225082f4786617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a60aca47f688fa2c531038e567024a333bcfe812421b71553f62644e851c7840",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6d2d51553b5a2a0455915a33b5752829bc568d53ebcc321a70ac7a1517da257`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def oscillation [TopologicalSpace E] (f : E → F) (x : E) : ENNReal :=
  ⨅ S ∈ (𝓝 x).map f, ediam S

/-- The oscillation of `f : E → F` within `D` at `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8742b162cd95ea64975d01991e225082f4786617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
