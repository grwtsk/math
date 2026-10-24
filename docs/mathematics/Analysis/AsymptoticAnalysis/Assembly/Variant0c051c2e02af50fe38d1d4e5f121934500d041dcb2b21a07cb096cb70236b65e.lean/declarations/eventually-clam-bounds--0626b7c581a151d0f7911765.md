# eventually_clam_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c9e7a72-e68b-71ae-e221-6c8999515902",
  "kind": "lemma",
  "lexical_name": "eventually_clam_bounds",
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
  "slug": "eventually-clam-bounds--0626b7c581a151d0f7911765",
  "source": {
    "blob": "3469a865bcf135c2b08ee407b8cc36179ab7deac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 867,
    "line": 853,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0626b7c581a151d0f79117655ca75dcb9325a0b7279ab6ce616755ece604d5a6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c9e7a72-e68b-71ae-e221-6c8999515902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 853–867.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_clam_bounds (P : Params) (hlam : 0 < P.lam) (hlam1 : P.lam ≤ 1) :
    ∀ᶠ T in atTop, 0 ≤ 1 / P.lam1 T + P.lam1 T / 3 ∧ 1 / P.lam1 T + P.lam1 T / 3 ≤ 2 / P.lam + 1 / 3 := by
  filter_upwards [tendsto_l_atTop.eventually_ge_atTop 1] with T hl
  have hlpos : 0 < l T := by linarith
  have hc := c₀_pos; have hc1 := c₀_lt_one
  have hl1pos := lam1_pos P T hlam hlpos
  have hl1le := lam1_le P T hlam.le hlpos
  have hhalf : P.lam / 2 ≤ P.lam1 T := by
    rw [lam1_eq, le_div_iff₀ (by linarith)]; nlinarith
  refine ⟨by positivity, ?_⟩
  have : 1 / P.lam1 T ≤ 2 / P.lam := by
    rw [div_le_div_iff₀ hl1pos hlam]; linarith
  linarith

/-- `a → 1` from [eq:abdef] `1 − 2w/L ≤ a ≤ 1` and `L → ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean#L853).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3469a865bcf135c2b08ee407b8cc36179ab7deac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
