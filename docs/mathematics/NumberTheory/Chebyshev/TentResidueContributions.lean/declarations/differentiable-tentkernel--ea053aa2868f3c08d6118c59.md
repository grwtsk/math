# differentiable_tentKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b6731fc-92fa-d493-ef7b-1009f9f813bf",
  "kind": "theorem",
  "lexical_name": "differentiable_tentKernel",
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
  "slug": "differentiable-tentkernel--ea053aa2868f3c08d6118c59",
  "source": {
    "blob": "f10859cd98a604d76eaa8edcc8e8ec4a7178cefa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 58,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentResidueContributions.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea053aa2868f3c08d6118c59320724351ff26be4267d02cf19e9680403153ff2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentResidueContributions.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b6731fc-92fa-d493-ef7b-1009f9f813bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiable_tentKernel (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    Differentiable ℂ (tentKernel x h) := by
  have hleft := differentiable_kernel ha (by linarith : x - h ≤ x)
  have hright := differentiable_kernel (by linarith : 1 < x) (by linarith : x ≤ x + h)
  have hshift : Differentiable ℂ (fun s : ℂ => s + 1) := by fun_prop
  exact ((((hleft.comp hshift).sub (hleft.const_mul ((x - h : ℝ) : ℂ))).add
    (hright.const_mul ((x + h : ℝ) : ℂ))).sub (hright.comp hshift)).div_const (h : ℂ)

/-- No arbitrary residue: the canonical zero contributes minus its actual
multiplicity times the multiplier evaluated at its full complex location. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentResidueContributions.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentResidueContributions.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f10859cd98a604d76eaa8edcc8e8ec4a7178cefa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
