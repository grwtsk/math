# MeromorphicNFAt.comp_analyticAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9570e741-8f82-1b3d-276d-08d4b54aa528",
  "kind": "theorem",
  "lexical_name": "MeromorphicNFAt.comp_analyticAt",
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
  "slug": "meromorphicnfat-comp-analyticat--cdcc64cc0e9cc45be39c7566",
  "source": {
    "blob": "f968a3ab49402aff844e783bd9074d59bf3e8cdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 412,
    "path": "GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variantf70a556531b83522dab141ee24e4f5d1342f363f975f0fd573eb7356e2cf78de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdcc64cc0e9cc45be39c7566904e3865dda7ba5a788346624736a602cb0bd9db",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NormalForm/Variantf70a556531b83522dab141ee24e4f5d1342f363f975f0fd573eb7356e2cf78de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9570e741-8f82-1b3d-276d-08d4b54aa528`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeromorphicNFAt.comp_analyticAt (hf : MeromorphicNFAt f (g x)) (hg : AnalyticAt 𝕜 g x) :
    MeromorphicNFAt (f ∘ g) x := by
  rcases hf with hf | ⟨n, q, hq_an, hq_ne, hf⟩
  · exact Or.inl (hg.continuousAt.tendsto.eventually hf)
  by_cases hord : analyticOrderAt (g · - g x) x = ⊤
  · rw [analyticOrderAt_eq_top] at hord
    by_cases h : f (g x) = 0
    · apply Or.inl
      filter_upwards [hord, hg.continuousAt.preimage_mem_nhds (hf.filter_mono (by simp))]
        using by simp_all [sub_eq_zero]
    · refine Or.inr ⟨0, fun _ ↦ f (g x), by fun_prop, h, ?_⟩
      filter_upwards [hord, hg.continuousAt.preimage_mem_nhds (hf.filter_mono (by simp))]
        using by simp_all [sub_eq_zero]
  lift analyticOrderAt (g · - g x) x to ℕ using hord with m hm
  obtain ⟨p, h₁p, h₂p, h₃p⟩ := (AnalyticAt.analyticOrderAt_eq_natCast (by fun_prop)).1 hm.symm
  refine Or.inr ⟨n * m, fun z ↦ (p z) ^ n • q (g z), (h₁p.zpow h₂p).smul (by fun_prop), ?_⟩
  simp_all only [ne_eq, smul_eq_mul, isUnit_iff_ne_zero, zpow_ne_zero n h₂p, not_false_eq_true,
    IsUnit.smul_eq_zero, true_and]
  filter_upwards [h₃p, hg.continuousAt.preimage_mem_nhds (hf.filter_mono (by simp))]
    with a h₁a h₂a
  simp_all only [Pi.smul_apply', Pi.pow_apply, Set.preimage_ofPred_eq, Set.mem_ofPred_eq,
    Function.comp_apply, ← smul_assoc, mul_zpow, smul_eq_mul]
  congr 2
  rw [mul_comm, zpow_mul, zpow_natCast]

/--
A function is meromorphic in normal form at a point iff it is meromorphic in normal form after
composition with an analytic function of nonvanishing derivative, such as translation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/NormalForm/Variantf70a556531b83522dab141ee24e4f5d1342f363f975f0fd573eb7356e2cf78de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variantf70a556531b83522dab141ee24e4f5d1342f363f975f0fd573eb7356e2cf78de.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f968a3ab49402aff844e783bd9074d59bf3e8cdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
