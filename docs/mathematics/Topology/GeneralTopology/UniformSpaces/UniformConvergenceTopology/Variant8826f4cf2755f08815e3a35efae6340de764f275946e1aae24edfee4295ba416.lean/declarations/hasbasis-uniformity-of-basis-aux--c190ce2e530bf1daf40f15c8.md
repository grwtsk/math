# hasBasis_uniformity_of_basis_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24320126-c8de-aae1-d502-f457ccaf1ab5",
  "kind": "theorem",
  "lexical_name": "hasBasis_uniformity_of_basis_aux₂",
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
  "slug": "hasbasis-uniformity-of-basis-aux--c190ce2e530bf1daf40f15c8",
  "source": {
    "blob": "61908578d325fa0d2be8fbb6bc9f2676913a8b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 662,
    "line": 648,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c190ce2e530bf1daf40f15c85d0dfc615690daa77537665b935b1c9ae0107e65",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24320126-c8de-aae1-d502-f457ccaf1ab5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 648–662.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem hasBasis_uniformity_of_basis_aux₂ (h : DirectedOn (· ⊆ ·) 𝔖) {p : ι → Prop}
    {s : ι → Set (β × β)} (hb : HasBasis (𝓤 β) p s) :
    DirectedOn
      ((fun s : Set α => (UniformFun.uniformSpace s β).comap (s.restrict : (α →ᵤ β) → s →ᵤ β)) ⁻¹'o
        GE.ge)
      𝔖 :=
  h.mono fun hst =>
    ((UniformOnFun.hasBasis_uniformity_of_basis_aux₁ α β 𝔖 hb _).le_basis_iff
          (UniformOnFun.hasBasis_uniformity_of_basis_aux₁ α β 𝔖 hb _)).mpr
      fun V hV => ⟨V, hV, UniformOnFun.gen_mono hst subset_rfl⟩
#align uniform_on_fun.has_basis_uniformity_of_basis_aux₂ UniformOnFun.hasBasis_uniformity_of_basis_aux₂

/-- If `𝔖 : Set (Set α)` is nonempty and directed and `𝓑` is a filter basis of `𝓤 β`, then the
uniformity of `α →ᵤ[𝔖] β` admits the family `{(f, g) | ∀ x ∈ S, (f x, g x) ∈ V}` for `S ∈ 𝔖` and
`V ∈ 𝓑` as a filter basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean#L648).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61908578d325fa0d2be8fbb6bc9f2676913a8b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
