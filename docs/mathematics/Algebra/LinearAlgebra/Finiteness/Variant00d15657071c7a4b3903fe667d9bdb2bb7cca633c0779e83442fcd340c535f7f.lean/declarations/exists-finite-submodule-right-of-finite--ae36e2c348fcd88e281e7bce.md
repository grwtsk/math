# exists_finite_submodule_right_of_finite'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9545fc94-929f-a45a-1dcb-ee430646390d",
  "kind": "theorem",
  "lexical_name": "exists_finite_submodule_right_of_finite'",
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
  "slug": "exists-finite-submodule-right-of-finite--ae36e2c348fcd88e281e7bce",
  "source": {
    "blob": "a1dc3f35a6ea19b87c2c0e27b6e397972290bccc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 177,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae36e2c348fcd88e281e7bced2898a449dcbfeadf034bc225a466c0d50385452",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9545fc94-929f-a45a-1dcb-ee430646390d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finite_submodule_right_of_finite' (s : Set (M₁ ⊗[R] N₁)) (hs : s.Finite) :
    ∃ (N' : Submodule R N) (hN : N' ≤ N₁), Module.Finite R N' ∧
      s ⊆ LinearMap.range ((inclusion hN).lTensor M₁) := by
  obtain ⟨_, N', _, hN, _, hfin, h⟩ := exists_finite_submodule_of_finite' s hs
  refine ⟨N', hN, hfin, ?_⟩
  rw [← LinearMap.lTensor_comp_rTensor] at h
  exact h.trans (LinearMap.range_comp_le_range _ _)

end TensorProduct
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1dc3f35a6ea19b87c2c0e27b6e397972290bccc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
