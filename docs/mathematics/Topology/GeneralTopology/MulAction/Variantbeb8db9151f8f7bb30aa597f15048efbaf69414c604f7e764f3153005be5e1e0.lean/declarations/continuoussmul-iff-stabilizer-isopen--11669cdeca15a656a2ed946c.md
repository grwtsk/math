# continuousSMul_iff_stabilizer_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbf1b3b8-c7e5-fb10-4b70-ca044d162335",
  "kind": "theorem",
  "lexical_name": "continuousSMul_iff_stabilizer_isOpen",
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
  "slug": "continuoussmul-iff-stabilizer-isopen--11669cdeca15a656a2ed946c",
  "source": {
    "blob": "8cf1ed6b72db6be8f05f62c54f90c09341ac583e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 296,
    "path": "GRWTSK/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11669cdeca15a656a2ed946c578b171d00296584147e946bfc24bff6954cfc48",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbf1b3b8-c7e5-fb10-4b70-ca044d162335`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousSMul_iff_stabilizer_isOpen [DiscreteTopology X] :
    ContinuousSMul M X ↔ ∀ x : X, IsOpen (MulAction.stabilizer M x : Set M) := by
  refine ⟨fun _ _ ↦ stabilizer_isOpen .., fun h ↦ ⟨?_⟩⟩
  rw [continuous_prod_of_discrete_right]
  intro y
  rw [continuous_discrete_rng]
  intro x
  let U := {m' : M | m' • y = x}
  have hU : IsOpen U := by
    by_cases hU' : U ≠ ∅
    · obtain ⟨m, (hm : m • y = x)⟩ := Set.nonempty_iff_empty_ne.mpr hU'.symm
      convert! (h x).preimage (by fun_prop : Continuous fun m' : M ↦ m' * m⁻¹)
      ext; simp [← smul_smul, U, eq_inv_smul_iff.mpr hm]
    simp_all
  simpa using! hU

end IsTopologicalGroup

section GroupWithZero

variable {G₀ X : Type*} [GroupWithZero G₀] [Zero X] [MulActionWithZero G₀ X]
  [TopologicalSpace G₀] [(𝓝[≠] (0 : G₀)).NeBot] [TopologicalSpace X] [ContinuousSMul G₀ X]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cf1ed6b72db6be8f05f62c54f90c09341ac583e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
