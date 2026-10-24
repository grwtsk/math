# theta_improv_2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ce3979ff32048626872bfc88c58371b04468b85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 374,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06d34f87-aa15-c929-e61d-da31f0e39cb4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7d809fa-c86b-bd40-7f55-5e80e74b91d3",
  "kind": "theorem",
  "lexical_name": "theta_improv_2",
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
  "slug": "theta-improv-2--ee15f1e51843a8d12381eafb",
  "source": {
    "blob": "4ce3979ff32048626872bfc88c58371b04468b85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 374,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee15f1e51843a8d12381eafb7f65026056dbe18488780dd08b2a4a0da421b81d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7d809fa-c86b-bd40-7f55-5e80e74b91d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theta_improv_2 (x : ℝ) (hx : x ≥ 89967803) :
    |θ x - x| ≤ x / (log x) ^ 3 := by
  have hx_pos : (0:ℝ) < x := by linarith
  have hlog_pos : (0:ℝ) < log x := log_pos (by linarith)
  have hlog3_pos : (0:ℝ) < (log x) ^ 3 := by positivity
  have hmem : (3, (1:ℝ), (89967803:ℝ)) ∈ Dusart.Table_4_2 := by
    simp [Dusart.Table_4_2]
  have hEθ := Dusart.theorem_4_2 hmem hx
  unfold Eθ at hEθ
  rw [div_le_div_iff₀ hx_pos hlog3_pos, one_mul] at hEθ
  rwa [le_div_iff₀' hlog3_pos, mul_comm]

end Dusart

namespace FaberKadiri

blueprint_comment /-- Some results from \cite{faber-kadiri}, \cite{faber-kadiri-corrigendum}-/

@[blueprint
  "thm:faber-kadiri-psi"
  (title := "Faber-Kadiri $\\psi$ bound")
  (statement := /-- For $x \geq 485{,}165{,}196$, we have $|\psi(x) - x| \leq 0.00053699\, x$. -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ce3979ff32048626872bfc88c58371b04468b85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
