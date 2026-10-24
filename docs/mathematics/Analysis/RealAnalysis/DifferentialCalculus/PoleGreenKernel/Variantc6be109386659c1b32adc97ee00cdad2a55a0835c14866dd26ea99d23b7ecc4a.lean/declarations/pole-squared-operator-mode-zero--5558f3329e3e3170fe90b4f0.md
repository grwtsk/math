# pole_squared_operator_mode_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "005e8e7bfbd5f458ac2177350e9e8de76c1de9fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71a22aa0-b7d9-9bf5-b598-537fc62f19e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9d0d8a0-a3ca-cec4-80db-9d1dbac6d6f1",
  "kind": "theorem",
  "lexical_name": "pole_squared_operator_mode_zero",
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
  "slug": "pole-squared-operator-mode-zero--5558f3329e3e3170fe90b4f0",
  "source": {
    "blob": "005e8e7bfbd5f458ac2177350e9e8de76c1de9fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5558f3329e3e3170fe90b4f0edb67381048e98c4ba4c9e4b1182a1fae22e8132",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9d0d8a0-a3ca-cec4-80db-9d1dbac6d6f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pole_squared_operator_mode_zero (σ a b t : ℝ) (hσ : σ ^ 2 = 1 / 4) :
    poleSquaredDifferentialOperator (poleMode σ a b) t = 0 := by
  unfold poleSquaredDifferentialOperator
  rw [pole_mode_fourth_deriv, pole_mode_second_deriv]
  have h4 : σ ^ 4 = (1 / 4 : ℝ) ^ 2 := by nlinarith [sq_nonneg (σ ^ 2 - 1 / 4)]
  have h3 : σ ^ 3 = σ / 4 := by rw [pow_succ, hσ]; ring
  rw [h4, h3, hσ]
  unfold poleMode
  ring

/-- The positive-half-line smooth branch of the squared Green kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantc6be109386659c1b32adc97ee00cdad2a55a0835c14866dd26ea99d23b7ecc4a.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `005e8e7bfbd5f458ac2177350e9e8de76c1de9fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
