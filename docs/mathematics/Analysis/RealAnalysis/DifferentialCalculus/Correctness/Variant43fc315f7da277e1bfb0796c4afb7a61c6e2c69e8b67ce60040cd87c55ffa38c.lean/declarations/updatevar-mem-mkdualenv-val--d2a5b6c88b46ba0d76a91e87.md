# updateVar_mem_mkDualEnv_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6758f0dac2c2058bc3b222cc1575703c166ec55b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b2dd566-a8bb-d25e-3b62-4908145eadbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f3953a6d-fc4d-2bbf-e373-69fd5a15fb74",
  "kind": "theorem",
  "lexical_name": "updateVar_mem_mkDualEnv_val",
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
  "slug": "updatevar-mem-mkdualenv-val--d2a5b6c88b46ba0d76a91e87",
  "source": {
    "blob": "6758f0dac2c2058bc3b222cc1575703c166ec55b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 132,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2a5b6c88b46ba0d76a91e87f819f021e14b33e6f48ebc10b904b108524f8b80",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3953a6d-fc4d-2bbf-e373-69fd5a15fb74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem updateVar_mem_mkDualEnv_val (ρ_real : Nat → ℝ) (ρ_int : IntervalEnv) (idx : Nat)
    (x : ℝ) (hx : x ∈ ρ_int idx) (hρ : ∀ i, ρ_real i ∈ ρ_int i) :
    ∀ i, Expr.updateVar ρ_real idx x i ∈ (mkDualEnv ρ_int idx i).val := by
  intro i
  by_cases hi : i = idx
  · subst hi
    simp only [Expr.updateVar_same, mkDualEnv, ↓reduceIte, DualInterval.varActive]
    exact hx
  · simp only [Expr.updateVar_other _ _ _ _ hi, mkDualEnv, if_neg hi, DualInterval.varPassive]
    exact hρ i

/-! ### evalFunc1 unfolding lemmas -/

/-- Helper lemma: evalFunc1 for addition unfolds correctly -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6758f0dac2c2058bc3b222cc1575703c166ec55b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
