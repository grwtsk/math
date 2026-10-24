# lpNorm_const'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dff2d407-c694-65aa-0155-cd704968167e",
  "kind": "lemma",
  "lexical_name": "lpNorm_const'",
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
  "slug": "lpnorm-const--35a4744ea62f5fc208f75d46",
  "source": {
    "blob": "1368cc30d77173ce8b9f2649c969f55cd3de9ea6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 120,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35a4744ea62f5fc208f75d46de1fabb6c76f6fd5959de7c70516ff60fe1aeee6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dff2d407-c694-65aa-0155-cd704968167e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma lpNorm_const' (hp₀ : p ≠ 0) (hp : p ≠ ∞) (c : E) :
    lpNorm (fun _x ↦ c) p μ = ‖c‖ * μ.real .univ ^ p.toReal⁻¹ := by
  simp [lpNorm, eLpNorm_const' c hp₀ hp, Measure.real, ENNReal.toReal_rpow]

section NormedField
variable {𝕜 : Type*} [NormedField 𝕜]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1368cc30d77173ce8b9f2649c969f55cd3de9ea6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
