# hasFDerivAt_of_tendstoUniformly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2acfb233-c079-2bb0-7d31-f0459e0be534",
  "kind": "theorem",
  "lexical_name": "hasFDerivAt_of_tendstoUniformly",
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
  "slug": "hasfderivat-of-tendstouniformly--5d6eaa83693ed00da1c6e880",
  "source": {
    "blob": "2d05eff24a158325e4d1973f9d52564d0a59ff77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 441,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d6eaa83693ed00da1c6e880bb4fa0611427cae4a1e62ca21a332bca43a4430b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2acfb233-c079-2bb0-7d31-f0459e0be534`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivAt_of_tendstoUniformly [NeBot l] (hf' : TendstoUniformly f' g' l)
    (hf : ∀ n : ι, ∀ x : E, HasFDerivAt (f n) (f' n x) x)
    (hfg : ∀ x : E, Tendsto (fun n => f n x) l (𝓝 (g x))) : ∀ x : E, HasFDerivAt g (g' x) x := by
  intro x
  have hf : ∀ n : ι, ∀ x : E, x ∈ Set.univ → HasFDerivAt (f n) (f' n x) x := by simp [hf]
  have hfg : ∀ x : E, x ∈ Set.univ → Tendsto (fun n => f n x) l (𝓝 (g x)) := by simp [hfg]
  have hf' : TendstoUniformlyOn f' g' l Set.univ := by rwa [tendstoUniformlyOn_univ]
  refine' hasFDerivAt_of_tendstoUniformlyOn isOpen_univ hf' hf hfg x (Set.mem_univ x)
#align has_fderiv_at_of_tendsto_uniformly hasFDerivAt_of_tendstoUniformly

end LimitsOfDerivatives

section deriv

/-! ### `deriv` versions of above theorems

In this section, we provide `deriv` equivalents of the `fderiv` lemmas in the previous section.
-/


variable {ι : Type*} {l : Filter ι} {𝕜 : Type*} [IsROrC 𝕜] {G : Type*} [NormedAddCommGroup G]
  [NormedSpace 𝕜 G] {f : ι → 𝕜 → G} {g : 𝕜 → G} {f' : ι → 𝕜 → G} {g' : 𝕜 → G} {x : 𝕜}

/-- If our derivatives converge uniformly, then the Fréchet derivatives converge uniformly -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d05eff24a158325e4d1973f9d52564d0a59ff77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
