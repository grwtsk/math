# nsmul_piAntidiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b94c2ba-d4e9-0953-8261-e2d2c7dbc5ea",
  "kind": "lemma",
  "lexical_name": "nsmul_piAntidiag",
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
  "slug": "nsmul-piantidiag--c032be8dd1308d81ecaa0015",
  "source": {
    "blob": "25e9243f386bae2e75ee8117aadc0835c31d83da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 219,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c032be8dd1308d81ecaa00158a695dd6989a2922cc1ce337f2404ebdef3fea90",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b94c2ba-d4e9-0953-8261-e2d2c7dbc5ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nsmul_piAntidiag [DecidableEq (ι → ℕ)] (s : Finset ι) (m : ℕ) {n : ℕ} (hn : n ≠ 0) :
    n •ℕ piAntidiag s m = {f ∈ piAntidiag s (n * m) | ∀ i ∈ s, n ∣ f i} := by
  ext f
  refine mem_smul_finset.trans ?_
  simp only [mem_smul_finset, mem_filter, mem_piAntidiag, Function.Embedding.coeFn_mk, exists_prop,
    and_assoc]
  constructor
  · rintro ⟨f, rfl, hf, rfl⟩
    simpa [← mul_sum, hn] using hf
  rintro ⟨hfsum, hfsup, hfdvd⟩
  have (i) : n ∣ f i := by
    by_cases hi : i ∈ s
    · exact hfdvd _ hi
    · rw [not_imp_comm.1 (hfsup _) hi]
      exact dvd_zero _
  refine ⟨fun i ↦ f i / n, ?_⟩
  simp [funext_iff, Nat.mul_div_cancel', ← Nat.sum_div, *]
  aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variantfb48c7b2c622f089ab9faa722fb86759d32d92f4929dc48653fd4955e0a9bdb0.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25e9243f386bae2e75ee8117aadc0835c31d83da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
