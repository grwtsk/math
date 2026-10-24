# isBasis_gen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:891fc2da-46aa-e532-7866-1572c4f5aa88",
  "kind": "theorem",
  "lexical_name": "isBasis_gen",
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
  "slug": "isbasis-gen--8ea8ee5cc4972c489284e71d",
  "source": {
    "blob": "e8dc1a1f0e8c15131ff125434bf6a82008620bc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 591,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ea8ee5cc4972c489284e71d620fa8ba5c975d3c99957399fa4b0f15ba0d361b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:891fc2da-46aa-e532-7866-1572c4f5aa88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 591–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem isBasis_gen (𝔖 : Set (Set α)) (h : 𝔖.Nonempty) (h' : DirectedOn (· ⊆ ·) 𝔖)
    (𝓑 : FilterBasis <| β × β) :
    IsBasis (fun SV : Set α × Set (β × β) => SV.1 ∈ 𝔖 ∧ SV.2 ∈ 𝓑) fun SV =>
      UniformOnFun.gen 𝔖 SV.1 SV.2 :=
  ⟨h.prod 𝓑.nonempty, fun {U₁V₁ U₂V₂} h₁ h₂ =>
    let ⟨U₃, hU₃, hU₁₃, hU₂₃⟩ := h' U₁V₁.1 h₁.1 U₂V₂.1 h₂.1
    let ⟨V₃, hV₃, hV₁₂₃⟩ := 𝓑.inter_sets h₁.2 h₂.2
    ⟨⟨U₃, V₃⟩,
      ⟨⟨hU₃, hV₃⟩, fun _ H =>
        ⟨fun x hx => (hV₁₂₃ <| H x <| hU₁₃ hx).1, fun x hx => (hV₁₂₃ <| H x <| hU₂₃ hx).2⟩⟩⟩⟩

variable (α β) [UniformSpace β] (𝔖 : Set (Set α))

/-- Uniform structure of `𝔖`-convergence, i.e uniform convergence on the elements of `𝔖`,
declared as an instance on `α →ᵤ[𝔖] β`. It is defined as the infimum, for `S ∈ 𝔖`, of the pullback
by `S.restrict`, the map of restriction to `S`, of the uniform structure `𝒰(s, β, uβ)` on
`↥S →ᵤ β`. We will denote it `𝒱(α, β, 𝔖, uβ)`, where `uβ` is the uniform structure on `β`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean#L591).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8dc1a1f0e8c15131ff125434bf6a82008620bc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
