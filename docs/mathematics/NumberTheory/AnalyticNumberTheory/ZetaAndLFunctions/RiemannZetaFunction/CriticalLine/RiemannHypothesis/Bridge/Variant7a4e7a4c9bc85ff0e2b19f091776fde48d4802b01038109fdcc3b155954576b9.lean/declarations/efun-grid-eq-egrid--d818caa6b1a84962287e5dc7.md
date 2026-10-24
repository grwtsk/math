# Efun_grid_eq_Egrid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc13e67e-a4df-d151-0592-168cfcc05759",
  "kind": "lemma",
  "lexical_name": "Efun_grid_eq_Egrid",
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
  "slug": "efun-grid-eq-egrid--d818caa6b1a84962287e5dc7",
  "source": {
    "blob": "28053bba407b751c9ae432fd8445898a3bbecba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 112,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d818caa6b1a84962287e5dc70c13cedbff3cf5df96b8fd0b69988770d7a312be",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc13e67e-a4df-d151-0592-168cfcc05759`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Efun_grid_eq_Egrid (hN : 0 < N) {m : ℕ} (hm : m ≤ N) : Efun (massOf S N) N ((m : ℝ) / N) = Egrid S N m := by
  have hNr : (0 : ℝ) < N := by exact_mod_cast hN
  rw [Efun_grid hN hm]
  clear hm
  induction m with
  | zero => simp [Egrid, U_zero]
  | succ m ih =>
    rw [Finset.sum_range_succ, ih, Csum_massOf]
    unfold Egrid
    rw [U_succ]
    push_cast
    field_simp
    ring

/-- **sup|E| from the grid**: the combined grid bounds give |E| ≤ B₂ on all of [0,1]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variant7a4e7a4c9bc85ff0e2b19f091776fde48d4802b01038109fdcc3b155954576b9.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28053bba407b751c9ae432fd8445898a3bbecba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
