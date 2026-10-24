# ofFun_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b8d6caf-a387-85b8-4260-95e26a999ae7",
  "kind": "theorem",
  "lexical_name": "ofFun_injective",
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
  "slug": "offun-injective--98080a25205b4fdada35ad4e",
  "source": {
    "blob": "426f6f9e8a3f7ac7238b5125976d16ce05bd53eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 376,
    "path": "GRWTSK/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98080a25205b4fdada35ad4e8482c42992fc198f1349e7457c2b00760fb85c4e",
  "verification": {
    "reference": "docs/verification/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b8d6caf-a387-85b8-4260-95e26a999ae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofFun_injective {f f' : E → F} {μ : Measure E}
    (hf : LocallyIntegrableOn f Ω μ) (hf' : LocallyIntegrableOn f' Ω μ)
    (h : ofFun Ω f μ n = ofFun Ω f' μ n) :
    f =ᵐ[μ.restrict Ω] f' := by
  suffices h' : ∀ᵐ x ∂μ, x ∈ Ω → (f - f') x = 0 by
    rw [← sub_ae_eq_zero]
    exact (ae_restrict_iff' Ω.isOpen.measurableSet).mpr h'
  refine Ω.isOpen.ae_eq_zero_of_integral_contDiff_smul_eq_zero (hf.sub hf')
    fun g g_diff g_compact g_tsupp ↦ ?_
  let φ : 𝓓^{n}(Ω, ℝ) := ⟨g, g_diff.of_le (mod_cast le_top), g_compact, g_tsupp⟩
  have : ∫ x, φ x • (f - f') x ∂μ = 0:= by
    simp_rw [Pi.sub_apply, smul_sub]
    rw [integral_sub (φ.integrable_smul hf) (φ.integrable_smul hf'), sub_eq_zero]
    rw [← ofFun_apply hf, ← ofFun_apply hf', h]
  congr

end ofFun

end Distribution
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Distribution/Variant389851e9f6c3b03f88cef61e703dc0118674eae58b1c197a911f1c6399dc3bbf.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `426f6f9e8a3f7ac7238b5125976d16ce05bd53eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
