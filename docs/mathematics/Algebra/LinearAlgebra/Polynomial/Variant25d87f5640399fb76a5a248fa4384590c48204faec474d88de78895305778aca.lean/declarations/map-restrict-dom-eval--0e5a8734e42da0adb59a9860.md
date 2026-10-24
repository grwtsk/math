# map_restrict_dom_evalₗ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8db416c7ac4f105e6c984230c86af9a1e106d3ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25d87f5640399fb76a5a248fa4384590c48204faec474d88de78895305778aca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:961fdc44-913a-a269-5d27-79d6334e5408",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e221c05d-64da-c91c-ece1-eb0724c4b59b",
  "kind": "theorem",
  "lexical_name": "map_restrict_dom_evalₗ",
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
  "slug": "map-restrict-dom-eval--0e5a8734e42da0adb59a9860",
  "source": {
    "blob": "8db416c7ac4f105e6c984230c86af9a1e106d3ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 128,
    "path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant25d87f5640399fb76a5a248fa4384590c48204faec474d88de78895305778aca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e5a8734e42da0adb59a9860eebba6f30049b06799bdacca611d62363b0c0926",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Polynomial/Variant25d87f5640399fb76a5a248fa4384590c48204faec474d88de78895305778aca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e221c05d-64da-c91c-ece1-eb0724c4b59b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_restrict_dom_evalₗ : (restrictDegree σ K (Fintype.card K - 1)).map (evalₗ K σ) = ⊤ := by
  cases nonempty_fintype σ
  refine top_unique (SetLike.le_def.2 fun e _ => mem_map.2 ?_)
  classical
  refine ⟨∑ n : σ → K, e n • indicator n, ?_, ?_⟩
  · exact sum_mem fun c _ => smul_mem _ _ (indicator_mem_restrictDegree _)
  · ext n
    simp only [evalₗ_apply, map_sum, smul_eval]
    rw [Finset.sum_eq_single n] <;>
      aesop (add simp [eval_indicator_apply_eq_zero, eval_indicator_apply_eq_one, eq_comm])

end

end

end MvPolynomial

namespace MvPolynomial

open scoped Cardinal
open LinearMap Submodule

universe u

variable (σ : Type u) (K : Type u) [Fintype K]

/-- The submodule of multivariate polynomials whose degree of each variable is strictly less
than the cardinality of K. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Polynomial/Variant25d87f5640399fb76a5a248fa4384590c48204faec474d88de78895305778aca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant25d87f5640399fb76a5a248fa4384590c48204faec474d88de78895305778aca.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8db416c7ac4f105e6c984230c86af9a1e106d3ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
