# inf_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fd8e741-194d-94a0-ea88-d3b78708e056",
  "kind": "theorem",
  "lexical_name": "inf_eq",
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
  "slug": "inf-eq--e5df243f76e2e87fa4c0bc5a",
  "source": {
    "blob": "61908578d325fa0d2be8fbb6bc9f2676913a8b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 750,
    "line": 742,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5df243f76e2e87fa4c0bc5a70713b32197c89187adfcb45cc15d8b2563787a3",
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

Occurrence: `result:3fd8e741-194d-94a0-ea88-d3b78708e056`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 742–750.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem inf_eq {u₁ u₂ : UniformSpace γ} :
    𝒱(α, γ, 𝔖, u₁ ⊓ u₂) = 𝒱(α, γ, 𝔖, u₁) ⊓ 𝒱(α, γ, 𝔖, u₂) := by
  rw [inf_eq_iInf, inf_eq_iInf, UniformOnFun.iInf_eq]
  refine' iInf_congr fun i => _
  cases i <;> rfl
#align uniform_on_fun.inf_eq UniformOnFun.inf_eq

/-- If `u` is a uniform structure on `β` and `f : γ → β`, then
`𝒱(α, γ, 𝔖, comap f u) = comap (fun g ↦ f ∘ g) 𝒱(α, γ, 𝔖, u₁)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean#L742).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61908578d325fa0d2be8fbb6bc9f2676913a8b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
