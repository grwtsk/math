# sup_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ae4a961-9bc1-fd2a-6e73-28b4adb5eb17",
  "kind": "theorem",
  "lexical_name": "sup_right",
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
  "slug": "sup-right--8ae6b550903d8dc4e5697bf2",
  "source": {
    "blob": "5fd27e6b1cae861e577e1e1c368cc88bb1acc65c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 565,
    "path": "GRWTSK/Algebra/Basic/Variant022abc7ba8e8705897b7c98b5188e281accd26916adb9d83700808179184ed7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ae6b550903d8dc4e5697bf224b17e520d9ccac33bf9c1e0f6b4e8fd6f814bcc",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant022abc7ba8e8705897b7c98b5188e281accd26916adb9d83700808179184ed7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ae4a961-9bc1-fd2a-6e73-28b4adb5eb17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 565–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_right (K L : IntermediateField F E) [IsGalois F K] [FiniteDimensional F K]
    (h : K ⊔ L = ⊤) : IsGalois L E := by
  obtain ⟨T, hT₁, hT₂⟩ := IsGalois.is_separable_splitting_field F K
  let T' := T.map (algebraMap F L)
  suffices T'.IsSplittingField L E from IsGalois.of_separable_splitting_field (p := T') hT₁.map
  rw [isSplittingField_iff_intermediateField] at hT₂ ⊢
  constructor
  · rw [Polynomial.map_map, ← IsScalarTower.algebraMap_eq]
    exact Polynomial.Splits.of_algHom hT₂.1 (IsScalarTower.toAlgHom _ _ _)
  · have h' : T'.rootSet E = T.rootSet E := by simp [T']
    rw [← lift_inj, lift_adjoin, ← coe_val, hT₂.1.image_rootSet] at hT₂
    rw [← restrictScalars_eq_top_iff (K := F), restrictScalars_adjoin, adjoin_union, adjoin_self,
      h', hT₂.2, lift_top, sup_comm, h]

end IsGalois

end GaloisEquivalentDefinitions

section normalClosure

variable (k K F : Type*) [Field k] [Field K] [Field F] [Algebra k K] [Algebra k F] [Algebra K F]
  [IsScalarTower k K F] [IsGalois k F]

/-- Let $F / K / k$ be a tower of field extensions. If $F$ is Galois over $k$,
then the normal closure of $K$ over $k$ in $F$ is Galois over $k$. -/
@[stacks 0EXM]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant022abc7ba8e8705897b7c98b5188e281accd26916adb9d83700808179184ed7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant022abc7ba8e8705897b7c98b5188e281accd26916adb9d83700808179184ed7b.lean#L565).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fd27e6b1cae861e577e1e1c368cc88bb1acc65c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
