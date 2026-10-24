# norm_posPart_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17e02fa58da3d7f0674fd239acf1669b361d648a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 488,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04a898efd80766ef42a94fda3e5fe5315f95c02039f9525142f9753ae6683366.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b77c395-3326-a271-e70b-1712c353079a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0da2563a-fab2-1efb-2975-7fe923be874f",
  "kind": "theorem",
  "lexical_name": "norm_posPart_mono",
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
  "slug": "norm-pospart-mono--8602c977a96559bb49956b52",
  "source": {
    "blob": "17e02fa58da3d7f0674fd239acf1669b361d648a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 488,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Order/Variant04a898efd80766ef42a94fda3e5fe5315f95c02039f9525142f9753ae6683366.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8602c977a96559bb49956b5270dcd04364f0832f3732c0904d2ae208d7905549",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Order/Variant04a898efd80766ef42a94fda3e5fe5315f95c02039f9525142f9753ae6683366.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0da2563a-fab2-1efb-2975-7fe923be874f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_posPart_mono {a b : A} (hab : a ≤ b) : ‖a⁺‖ ≤ ‖b⁺‖ := by
  by_cases! ha : ¬ IsSelfAdjoint a
  · simp [CFC.posPart_def, cfcₙ_apply_of_not_predicate, ha, mt (IsSelfAdjoint.of_le hab) ha]
  have hb : IsSelfAdjoint b := ha.of_ge hab
  have h : a ≤ b⁺ := hab.trans CFC.le_posPart
  have key := IsSelfAdjoint.conjugate_le_conjugate h (CFC.posPart_nonneg a).isSelfAdjoint
  nth_rw 2 [← CFC.posPart_sub_negPart a] at key
  simp only [mul_sub, CFC.posPart_mul_negPart, sub_zero] at key
  obtain (ha' | ha') := eq_zero_or_norm_pos (a⁺)
  · simp [ha']
  suffices ‖a⁺‖ ^ 3 ≤ ‖a⁺‖ * ‖b⁺‖ * ‖a⁺‖ by simpa [pow_succ, ha']
  calc
    ‖a⁺‖ ^ 3 = ‖a⁺ * a⁺ * a⁺‖ := by
      conv_rhs => rw [← cfcₙ_id' ℝ a⁺, ← cfcₙ_mul .., ← cfcₙ_mul ..]
      simp [← pow_three', norm_cfcₙ_pow ℝ a⁺ 3]
    _ ≤ ‖a⁺ * b⁺ * a⁺‖ := norm_le_norm_of_le_of_nonneg key
    _ ≤ ‖a⁺‖ * ‖b⁺‖ * ‖a⁺‖ := norm_mul₃_le ..

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Order/Variant04a898efd80766ef42a94fda3e5fe5315f95c02039f9525142f9753ae6683366.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Order/Variant04a898efd80766ef42a94fda3e5fe5315f95c02039f9525142f9753ae6683366.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17e02fa58da3d7f0674fd239acf1669b361d648a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
