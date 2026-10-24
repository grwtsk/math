# CompleteSpace.iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f703f0f9-28a3-9e81-0f7a-3c2c791f823c",
  "kind": "theorem",
  "lexical_name": "CompleteSpace.iInf",
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
  "slug": "completespace-iinf--411aae0598aaf601ec5d6ea6",
  "source": {
    "blob": "132ac49b25b5c5558a173eacad5d8d8967610e1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 124,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Pi/Variant8521ff0bb2f999072d29ef8eb44f04a87d19fab085b477e2a8b2c4bde434e356.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:411aae0598aaf601ec5d6ea606937587e5e7ec7b4c21091be8be8e99469e61cd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Pi/Variant8521ff0bb2f999072d29ef8eb44f04a87d19fab085b477e2a8b2c4bde434e356.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f703f0f9-28a3-9e81-0f7a-3c2c791f823c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem CompleteSpace.iInf {ι X : Type*} {u : ι → UniformSpace X}
    (hu : ∀ i, @CompleteSpace X (u i))
    (ht : ∃ t, @T2Space X t ∧ ∀ i, (u i).toTopologicalSpace ≤ t) :
    @CompleteSpace X (⨅ i, u i) := by
  -- We can assume `X` is nonempty.
  nontriviality X
  rcases ht with ⟨t, ht, hut⟩
  -- The diagonal map `(X, ⨅ i, u i) → ∀ i, (X, u i)` is a uniform embedding.
  have : @IsUniformInducing X (ι → X) (⨅ i, u i) (Pi.uniformSpace (U := u)) (const ι) := by
    simp_rw [isUniformInducing_iff, iInf_uniformity, Pi.uniformity, Filter.comap_iInf,
      Filter.comap_comap, comp_def, const, Prod.eta, comap_id']
  -- Hence, it suffices to show that its range, the diagonal, is closed in `Π i, (X, u i)`.
  simp_rw [@completeSpace_iff_isComplete_range _ _ (_) (_) _ this, range_const_eq_diagonal,
    setOf_forall]
  -- The separation of `t` ensures that this is the case in `Π i, (X, t)`, hence the result
  -- since the topology associated to each `u i` is finer than `t`.
  have : Pi.topologicalSpace (t₂ := fun i ↦ (u i).toTopologicalSpace) ≤
         Pi.topologicalSpace (t₂ := fun _ ↦ t) :=
    iInf_mono fun i ↦ induced_mono <| hut i
  refine IsClosed.isComplete <| .mono ?_ this
  exact isClosed_iInter fun i ↦ isClosed_iInter fun j ↦
    isClosed_eq (continuous_apply _) (continuous_apply _)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Pi/Variant8521ff0bb2f999072d29ef8eb44f04a87d19fab085b477e2a8b2c4bde434e356.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Pi/Variant8521ff0bb2f999072d29ef8eb44f04a87d19fab085b477e2a8b2c4bde434e356.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `132ac49b25b5c5558a173eacad5d8d8967610e1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
