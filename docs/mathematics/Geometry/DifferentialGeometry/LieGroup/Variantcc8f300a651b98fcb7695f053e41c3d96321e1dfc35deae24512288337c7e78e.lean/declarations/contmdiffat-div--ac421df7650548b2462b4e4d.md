# ContMDiffAt.div₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:810a0987-f410-a84b-2d19-551daa25cfee",
  "kind": "theorem",
  "lexical_name": "ContMDiffAt.div₀",
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
  "slug": "contmdiffat-div--ac421df7650548b2462b4e4d",
  "source": {
    "blob": "ade2c9a1688396460956a6205fdad7f2ea573f7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 358,
    "path": "GRWTSK/Geometry/DifferentialGeometry/LieGroup/Variantcc8f300a651b98fcb7695f053e41c3d96321e1dfc35deae24512288337c7e78e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac421df7650548b2462b4e4d14a2eb3283981a5f9d86904135468b98d57cdaa1",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/LieGroup/Variantcc8f300a651b98fcb7695f053e41c3d96321e1dfc35deae24512288337c7e78e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:810a0987-f410-a84b-2d19-551daa25cfee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiffAt.div₀ (hf : ContMDiffAt I' I n f a) (hg : ContMDiffAt I' I n g a)
    (h₀ : g a ≠ 0) : ContMDiffAt I' I n (f / g) a := by
  simpa [div_eq_mul_inv] using hf.mul (hg.inv₀ h₀)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/LieGroup/Variantcc8f300a651b98fcb7695f053e41c3d96321e1dfc35deae24512288337c7e78e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/LieGroup/Variantcc8f300a651b98fcb7695f053e41c3d96321e1dfc35deae24512288337c7e78e.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ade2c9a1688396460956a6205fdad7f2ea573f7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
