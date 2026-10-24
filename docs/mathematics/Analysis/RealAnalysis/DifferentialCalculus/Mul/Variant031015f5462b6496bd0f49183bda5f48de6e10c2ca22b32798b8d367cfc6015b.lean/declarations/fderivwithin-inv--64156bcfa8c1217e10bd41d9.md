# fderivWithin_inv'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24c43103-0f1d-046c-350e-d783eb720e70",
  "kind": "theorem",
  "lexical_name": "fderivWithin_inv'",
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
  "slug": "fderivwithin-inv--64156bcfa8c1217e10bd41d9",
  "source": {
    "blob": "85508b43238d1779ea9fb3a83c4e1da9e3492be3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 619,
    "line": 612,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant031015f5462b6496bd0f49183bda5f48de6e10c2ca22b32798b8d367cfc6015b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64156bcfa8c1217e10bd41d9662c9d54e50e4233033bf94af03e7e56028fe49d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant031015f5462b6496bd0f49183bda5f48de6e10c2ca22b32798b8d367cfc6015b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24c43103-0f1d-046c-350e-d783eb720e70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 612–619.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fderivWithin_inv' {s : Set R} {x : R} (hx : x ≠ 0) (hxs : UniqueDiffWithinAt 𝕜 s x) :
    fderivWithin 𝕜 (fun x => x⁻¹) s x = -mulLeftRight 𝕜 R x⁻¹ x⁻¹ := by
  rw [DifferentiableAt.fderivWithin (differentiableAt_inv' hx) hxs]
  exact fderiv_inv' hx
#align fderiv_within_inv' fderivWithin_inv'

variable {h : E → R} {z : E} {S : Set E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant031015f5462b6496bd0f49183bda5f48de6e10c2ca22b32798b8d367cfc6015b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant031015f5462b6496bd0f49183bda5f48de6e10c2ca22b32798b8d367cfc6015b.lean#L612).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85508b43238d1779ea9fb3a83c4e1da9e3492be3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
