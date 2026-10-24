# hasBasis_nhds_of_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28e8804a-a189-f641-4a1b-4c22ba0570a8",
  "kind": "theorem",
  "lexical_name": "hasBasis_nhds_of_basis",
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
  "slug": "hasbasis-nhds-of-basis--c058f30fe5f70ae0479b5ca4",
  "source": {
    "blob": "61908578d325fa0d2be8fbb6bc9f2676913a8b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 694,
    "line": 685,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c058f30fe5f70ae0479b5ca41ff538a5ede9f1770f9211c6f7208676d76f8d45",
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

Occurrence: `result:28e8804a-a189-f641-4a1b-4c22ba0570a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 685–694.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem hasBasis_nhds_of_basis (f : α →ᵤ[𝔖] β) (h : 𝔖.Nonempty)
    (h' : DirectedOn (· ⊆ ·) 𝔖) {p : ι → Prop} {s : ι → Set (β × β)} (hb : HasBasis (𝓤 β) p s) :
    (𝓝 f).HasBasis (fun Si : Set α × ι => Si.1 ∈ 𝔖 ∧ p Si.2) fun Si =>
      { g | (g, f) ∈ UniformOnFun.gen 𝔖 Si.1 (s Si.2) } :=
  letI : UniformSpace (α → β) := UniformOnFun.uniformSpace α β 𝔖
  nhds_basis_uniformity (UniformOnFun.hasBasis_uniformity_of_basis α β 𝔖 h h' hb)
#align uniform_on_fun.has_basis_nhds_of_basis UniformOnFun.hasBasis_nhds_of_basis

/-- For `f : α →ᵤ[𝔖] β`, where `𝔖 : Set (Set α)` is nonempty and directed, `𝓝 f` admits the
family `{g | ∀ x ∈ S, (f x, g x) ∈ V}` for `S ∈ 𝔖` and `V ∈ 𝓤 β` as a filter basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean#L685).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61908578d325fa0d2be8fbb6bc9f2676913a8b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
