# mellin_convergent_top_of_isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1334cf635cc67378b0eec1a0bce7ba0190ff3e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ca5ec9b-2719-d651-241e-434d96301611",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bbeff39-7a3d-0085-8f02-82bbcf6ab8a3",
  "kind": "theorem",
  "lexical_name": "mellin_convergent_top_of_isBigO",
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
  "slug": "mellin-convergent-top-of-isbigo--60bd714b5cd9bd626d27e824",
  "source": {
    "blob": "a1334cf635cc67378b0eec1a0bce7ba0190ff3e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 211,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60bd714b5cd9bd626d27e8245dbded804155b5e457e60b5b99efa473034613dc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bbeff39-7a3d-0085-8f02-82bbcf6ab8a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mellin_convergent_top_of_isBigO {f : ℝ → ℝ}
    (hfc : AEStronglyMeasurable f <| volume.restrict (Ioi 0)) {a s : ℝ}
    (hf : f =O[atTop] (· ^ (-a))) (hs : s < a) :
    ∃ c : ℝ, 0 < c ∧ IntegrableOn (fun t : ℝ => t ^ (s - 1) * f t) (Ioi c) := by
  obtain ⟨d, hd'⟩ := hf.isBigOWith
  simp_rw [IsBigOWith, eventually_atTop] at hd'
  obtain ⟨e, he⟩ := hd'
  have he' : 0 < max e 1 := zero_lt_one.trans_le (le_max_right _ _)
  refine' ⟨max e 1, he', _, _⟩
  · refine' AEStronglyMeasurable.mul _ (hfc.mono_set (Ioi_subset_Ioi he'.le))
    refine' (ContinuousAt.continuousOn fun t ht => _).aestronglyMeasurable measurableSet_Ioi
    exact continuousAt_rpow_const _ _ (Or.inl <| (he'.trans ht).ne')
  · have : ∀ᵐ t : ℝ ∂volume.restrict (Ioi <| max e 1),
        ‖t ^ (s - 1) * f t‖ ≤ t ^ (s - 1 + -a) * d := by
      refine' (ae_restrict_mem measurableSet_Ioi).mono fun t ht => _
      have ht' : 0 < t := he'.trans ht
      rw [norm_mul, rpow_add ht', ← norm_of_nonneg (rpow_nonneg_of_nonneg ht'.le (-a)), mul_assoc,
        mul_comm _ d, norm_of_nonneg (rpow_nonneg_of_nonneg ht'.le _)]
      exact mul_le_mul_of_nonneg_left (he t ((le_max_left e 1).trans_lt ht).le)
        (rpow_pos_of_pos ht' _).le
    refine' (HasFiniteIntegral.mul_const _ _).mono' this
    exact (integrableOn_Ioi_rpow_of_lt (by linarith) he').hasFiniteIntegral
set_option linter.uppercaseLean3 false in
#align mellin_convergent_top_of_is_O mellin_convergent_top_of_isBigO

/-- If `f` is a locally integrable real-valued function which is `O(x ^ (-b))` at `0`, then for any
`b < s`, its Mellin transform converges on some right neighbourhood of `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1334cf635cc67378b0eec1a0bce7ba0190ff3e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
