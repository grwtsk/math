# prodCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc640a3a8284313f0e02b343d6bede831b28488402244591652f7dc06dc222e6",
  "kind": "def",
  "lexical_name": "prodCongr",
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
  "slug": "prodcongr--c79edee1565d8a47b5119096",
  "source": {
    "blob": "4f85f59d935ff6e18fb339824c4dfe1ab428fbdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 416,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variantf0e48b3a9e62f869b9af0c2f06a6e8a8f066c105f3d254f4ee0bfec9af83665d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c79edee1565d8a47b511909661db3889e72c1899b3cad80a73e3ff71926cc757",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousAffineEquiv/Variantf0e48b3a9e62f869b9af0c2f06a6e8a8f066c105f3d254f4ee0bfec9af83665d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc640a3a8284313f0e02b343d6bede831b28488402244591652f7dc06dc222e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodCongr : P₁ × P₃ ≃ᴬ[k] P₂ × P₄ where
  __ := AffineEquiv.prodCongr e₁ e₂
  continuous_toFun := by eta_expand; dsimp; fun_prop
  continuous_invFun := by eta_expand; dsimp; fun_prop

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousAffineEquiv/Variantf0e48b3a9e62f869b9af0c2f06a6e8a8f066c105f3d254f4ee0bfec9af83665d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variantf0e48b3a9e62f869b9af0c2f06a6e8a8f066c105f3d254f4ee0bfec9af83665d.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f85f59d935ff6e18fb339824c4dfe1ab428fbdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
