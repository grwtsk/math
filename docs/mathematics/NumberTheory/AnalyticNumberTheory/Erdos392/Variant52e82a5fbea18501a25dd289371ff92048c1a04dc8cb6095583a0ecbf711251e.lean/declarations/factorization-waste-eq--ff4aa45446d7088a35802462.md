# Factorization.waste_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:760a1a8b-539f-66b1-f6e0-f7e902b669e4",
  "kind": "theorem",
  "lexical_name": "Factorization.waste_eq",
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
  "slug": "factorization-waste-eq--ff4aa45446d7088a35802462",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff4aa45446d7088a358024621a326be06aacdadd83d1a66e200e1793cb9bfb14",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:760a1a8b-539f-66b1-f6e0-f7e902b669e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Factorization.waste_eq {n : ℕ} (f : Factorization n) (hf : f.total_imbalance = 0) :
    f.a.card * (Real.log n) = Real.log n.factorial + f.waste := by
  unfold waste sum
  have hlog : log (n.factorial : ℝ) = (f.a.map (fun m : ℕ ↦ log (m : ℝ))).sum := by
    rw [← f.zero_total_imbalance hf, prod, map_id, cast_multiset_prod, log_multiset_prod,
      Multiset.map_map]
    · rfl
    · exact fun x hx ↦ by
        obtain ⟨m, hm, rfl⟩ := Multiset.mem_map.mp hx; exact cast_ne_zero.mpr (f.hpos m hm).ne'
  rcases eq_or_ne n 0 with rfl | hn
  · simp [Multiset.eq_zero_of_forall_notMem
       fun m hm ↦ (f.hpos m hm).ne' (le_zero.mp (f.ha m hm))]
  · have hn_pos : (0 : ℝ) < n := cast_pos.mpr (pos_of_ne_zero hn)
    rw [hlog, ← Multiset.sum_map_add]
    conv_lhs => rw [show f.a.card * log (n : ℝ) = (f.a.map (fun _ ↦ log (n : ℝ))).sum from
      by rw [Multiset.map_const', Multiset.sum_replicate, nsmul_eq_mul]]
    exact congrArg _ (Multiset.map_congr rfl fun m hm ↦ by
      rw [Real.log_div hn_pos.ne' (cast_ne_zero.mpr (f.hpos m hm).ne')]; ring)

@[blueprint
  "score-def"
  (statement := /--
  The score of a factorization (relative to a cutoff parameter $L$) is equal to its waste,
  plus $\log p$ for every surplus prime $p$, $\log (n/p)$ for every deficit prime above $L$,
  $\log L$ for every deficit prime below $L$ and an additional $\log n$ if one is not in
  total balance.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
