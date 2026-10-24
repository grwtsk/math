# finrank_sup_le_of_free

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:322baa9c-6087-b3ae-569c-20295b1acf3e",
  "kind": "theorem",
  "lexical_name": "finrank_sup_le_of_free",
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
  "slug": "finrank-sup-le-of-free--f69b9ea029f25b3b8b2143f2",
  "source": {
    "blob": "0399a75e29b6d51f52bce8badf13544792af322c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 50,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dimension/Variant2edb83830128ad8e4cb48b884b9d86722da2a566fa6c6422e1239bd71e9919c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f69b9ea029f25b3b8b2143f2539e9d21a41fe05d09002fd0159d73ef9202745b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Dimension/Variant2edb83830128ad8e4cb48b884b9d86722da2a566fa6c6422e1239bd71e9919c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:322baa9c-6087-b3ae-569c-20295b1acf3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_sup_le_of_free : finrank R ↥(A ⊔ B) ≤ finrank R A * finrank R B := by
  by_cases h : Module.Finite R A ∧ Module.Finite R B
  · obtain ⟨_, _⟩ := h
    simpa only [map_mul] using Cardinal.toNat_le_toNat (A.rank_sup_le_of_free B)
      (Cardinal.mul_lt_aleph0 (rank_lt_aleph0 R A) (rank_lt_aleph0 R B))
  wlog hA : ¬ Module.Finite R A generalizing A B
  · have := this B A (fun h' ↦ h h'.symm) (not_and.1 h (of_not_not hA))
    rwa [sup_comm, mul_comm] at this
  rw [← rank_lt_aleph0_iff, not_lt] at hA
  have := LinearMap.rank_le_of_injective _ <| Submodule.inclusion_injective <|
    show toSubmodule A ≤ toSubmodule (A ⊔ B) by simp
  rw [show finrank R A = 0 from Cardinal.toNat_apply_of_aleph0_le hA,
    show finrank R ↥(A ⊔ B) = 0 from Cardinal.toNat_apply_of_aleph0_le (hA.trans this), zero_mul]

end Subalgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dimension/Variant2edb83830128ad8e4cb48b884b9d86722da2a566fa6c6422e1239bd71e9919c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dimension/Variant2edb83830128ad8e4cb48b884b9d86722da2a566fa6c6422e1239bd71e9919c4.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0399a75e29b6d51f52bce8badf13544792af322c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
