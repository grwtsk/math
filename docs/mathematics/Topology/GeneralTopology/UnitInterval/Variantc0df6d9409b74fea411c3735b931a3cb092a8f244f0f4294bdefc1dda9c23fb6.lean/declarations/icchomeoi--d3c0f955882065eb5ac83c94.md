# iccHomeoI

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f4b2c1b0279361e210b16d2cc903a01969d8b0cc521306a508df8d4ba42b43a",
  "kind": "def",
  "lexical_name": "iccHomeoI",
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
  "slug": "icchomeoi--d3c0f955882065eb5ac83c94",
  "source": {
    "blob": "ed47470081007588911366581da6d3f8e1607fb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 221,
    "path": "GRWTSK/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3c0f955882065eb5ac83c946af6737c580f25f177f9e9eec0eb02930162ea44",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f4b2c1b0279361e210b16d2cc903a01969d8b0cc521306a508df8d4ba42b43a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def iccHomeoI (a b : 𝕜) (h : a < b) : Set.Icc a b ≃ₜ Set.Icc (0 : 𝕜) (1 : 𝕜) := by
  let e := Homeomorph.image (affineHomeomorph (b - a) a (sub_pos.mpr h).ne.symm) (Set.Icc 0 1)
  refine' (e.trans _).symm
  apply Homeomorph.setCongr
  rw [affineHomeomorph_image_I _ _ (sub_pos.2 h)]
  simp
set_option linter.uppercaseLean3 false in
#align Icc_homeo_I iccHomeoI

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitInterval/Variantc0df6d9409b74fea411c3735b931a3cb092a8f244f0f4294bdefc1dda9c23fb6.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed47470081007588911366581da6d3f8e1607fb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
