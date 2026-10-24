# summable_norm_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d1c2a4d7b4532225c58289c25d1964dc73d5457",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 656,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d780887-e7e0-bbbd-81aa-48c31c459ac5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96b8d748-d509-d8a9-fb1f-e875e33eeaf5",
  "kind": "theorem",
  "lexical_name": "summable_norm_iff",
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
  "slug": "summable-norm-iff--64f3a550262678c22d30bf58",
  "source": {
    "blob": "4d1c2a4d7b4532225c58289c25d1964dc73d5457",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 679,
    "line": 656,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64f3a550262678c22d30bf583569ffe25b2d91e3c410ebf215ee9119645a0d2a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96b8d748-d509-d8a9-fb1f-e875e33eeaf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 656–679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_norm_iff {α E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [FiniteDimensional ℝ E] {f : α → E} : (Summable fun x => ‖f x‖) ↔ Summable f := by
  refine' ⟨summable_of_summable_norm, fun hf => _⟩
  -- First we use a finite basis to reduce the problem to the case `E = Fin N → ℝ`
  suffices ∀ {N : ℕ} {g : α → Fin N → ℝ}, Summable g → Summable fun x => ‖g x‖ by
    obtain v := finBasis ℝ E
    set e := v.equivFunL
    have : Summable fun x => ‖e (f x)‖ := this (e.summable.2 hf)
    refine'
      summable_of_norm_bounded _ (this.mul_left ↑‖(e.symm : (Fin (finrank ℝ E) → ℝ) →L[ℝ] E)‖₊)
        fun i => _
    simpa using (e.symm : (Fin (finrank ℝ E) → ℝ) →L[ℝ] E).le_op_norm (e <| f i)
  clear! E
  -- Now we deal with `g : α → Fin N → ℝ`
  intro N g hg
  have : ∀ i, Summable fun x => ‖g x i‖ := fun i => (Pi.summable.1 hg i).abs
  refine'
    summable_of_norm_bounded _ (summable_sum fun i (_ : i ∈ Finset.univ) => this i) fun x => _
  rw [norm_norm, pi_norm_le_iff_of_nonneg]
  · refine' fun i => Finset.single_le_sum (f := fun i => ‖g x i‖) (fun i _ => _) (Finset.mem_univ i)
    exact norm_nonneg (g x i)
  · exact Finset.sum_nonneg fun _ _ => norm_nonneg _
#align summable_norm_iff summable_norm_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean#L656).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d1c2a4d7b4532225c58289c25d1964dc73d5457` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
