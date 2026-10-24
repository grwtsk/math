# cauchySeq_range_of_norm_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f30a534-09dd-9a6b-a080-865f1812e3a6",
  "kind": "theorem",
  "lexical_name": "cauchySeq_range_of_norm_bounded",
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
  "slug": "cauchyseq-range-of-norm-bounded--d0ffeafe91442824311f88dc",
  "source": {
    "blob": "c869d50433d298eee261f776c4bb3d3c62371896",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 79,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0ffeafe91442824311f88dcac28a1afd21ffc98d343b308820ceaafa542daa0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f30a534-09dd-9a6b-a080-865f1812e3a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchySeq_range_of_norm_bounded {f : ℕ → E} (g : ℕ → ℝ)
    (hg : CauchySeq fun n => ∑ i ∈ range n, g i) (hf : ∀ i, ‖f i‖ ≤ g i) :
    CauchySeq fun n => ∑ i ∈ range n, f i := by
  refine Metric.cauchySeq_iff'.2 fun ε hε => ?_
  refine (Metric.cauchySeq_iff'.1 hg ε hε).imp fun N hg n hn => ?_
  specialize hg n hn
  rw [dist_eq_norm, ← sum_Ico_eq_sub _ hn] at hg ⊢
  calc
    ‖∑ k ∈ Ico N n, f k‖ ≤ ∑ k ∈ _, ‖f k‖ := norm_sum_le _ _
    _ ≤ ∑ k ∈ _, g k := sum_le_sum fun x _ => hf x
    _ ≤ ‖∑ k ∈ _, g k‖ := le_abs_self _
    _ < ε := hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c869d50433d298eee261f776c4bb3d3c62371896` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
