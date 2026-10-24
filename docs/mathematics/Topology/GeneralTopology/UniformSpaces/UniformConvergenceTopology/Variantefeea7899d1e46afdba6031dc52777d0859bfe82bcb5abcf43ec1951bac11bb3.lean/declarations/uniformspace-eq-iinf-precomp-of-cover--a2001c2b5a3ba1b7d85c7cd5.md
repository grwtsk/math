# uniformSpace_eq_iInf_precomp_of_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46eef5b66be1bf1fa5147fb430663c2432efab16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 533,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/efeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11c509c4-9abd-facc-a914-8693b73fa72f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05400731-0508-5378-046a-40df9f1161ce",
  "kind": "theorem",
  "lexical_name": "uniformSpace_eq_iInf_precomp_of_cover",
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
  "slug": "uniformspace-eq-iinf-precomp-of-cover--a2001c2b5a3ba1b7d85c7cd5",
  "source": {
    "blob": "46eef5b66be1bf1fa5147fb430663c2432efab16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 533,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2001c2b5a3ba1b7d85c7cd58330331ad4b24f3e662dcb349e236076f542b874",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05400731-0508-5378-046a-40df9f1161ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformSpace_eq_iInf_precomp_of_cover {δ : ι → Type*} (φ : Π i, δ i → α)
    (h_cover : ∃ I : Set ι, I.Finite ∧ ⋃ i ∈ I, range (φ i) = univ) :
    𝒰(α, β, _) = ⨅ i, .comap (ofFun ∘ (· ∘ φ i) ∘ toFun) 𝒰(δ i, β, _) := by
  ext : 1
  simp_rw [iInf_uniformity, uniformity_comap]
  refine le_antisymm (le_iInf fun i ↦ tendsto_iff_comap.mp UniformFun.precomp_uniformContinuous) ?_
  rcases h_cover with ⟨I, I_finite, I_cover⟩
  refine HasBasis.iInf (fun i : ι ↦ UniformFun.hasBasis_uniformity (δ i) β |>.comap _)
      |>.le_basis_iff (UniformFun.hasBasis_uniformity α β) |>.mpr fun U hU ↦
    ⟨⟨I, fun _ ↦ U⟩, ⟨I_finite, fun _ ↦ hU⟩, fun ⟨f, g⟩ hfg x ↦ ?_⟩
  rcases mem_iUnion₂.mp <| I_cover.ge <| mem_univ x with ⟨i, hi, y, rfl⟩
  exact mem_iInter.mp hfg ⟨i, hi⟩ y

end UniformFun

namespace UniformOnFun

variable {α β : Type*} {γ ι : Type*}
variable {s : Set α} {p : Filter ι}

local notation "𝒰(" α ", " β ", " u ")" => @UniformFun.uniformSpace α β u

/-- Basis sets for the uniformity of `𝔖`-convergence: for `S : Set α` and `V : Set (β × β)`,
`gen 𝔖 S V` is the set of pairs `(f, g)` of functions `α →ᵤ[𝔖] β` such that
`∀ x ∈ S, (f x, g x) ∈ V`. Note that the family `𝔖 : Set (Set α)` is only used to specify which
type alias of `α → β` to use here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46eef5b66be1bf1fa5147fb430663c2432efab16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
