# finrank_eq_max_natDegree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c1f28b5-68bb-4be1-11d9-9acd1b1282b9",
  "kind": "theorem",
  "lexical_name": "finrank_eq_max_natDegree",
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
  "slug": "finrank-eq-max-natdegree--88624ed78a6e70d4014ddb2f",
  "source": {
    "blob": "6a4a0084c293320bd5041e8aadb87ebcb7de4b95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 170,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IntermediateField/Varianta4fca8790e7c3d9eaee91de552e0cd3e53d1400e4cad68a3a4074374033a292a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88624ed78a6e70d4014ddb2f514a1e926b88f1ac10c77148fa59038620b02ced",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IntermediateField/Varianta4fca8790e7c3d9eaee91de552e0cd3e53d1400e4cad68a3a4074374033a292a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c1f28b5-68bb-4be1-11d9-9acd1b1282b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_eq_max_natDegree :
    Module.finrank K⟮f⟯ K⟮X⟯ = max f.num.natDegree f.denom.natDegree := by
  by_cases hf : ∃ c, f = C c
  · obtain ⟨c, rfl⟩ := hf
    rw [adjoin_simple_eq_bot_iff.mpr (show C c ∈ ⊥ from ⟨c, rfl⟩), finrank_bot',
      Module.finrank_of_not_finite fun H ↦ Algebra.transcendental_iff_not_isAlgebraic.mp
      transcendental <| Algebra.IsAlgebraic.of_finite K K⟮X⟯]
    simp
  rw [← (IntermediateField.adjoinXEquiv K⟮f⟯).toLinearEquiv.finrank_eq,
    adjoin.finrank (f.isAlgebraic_adjoin_simple_X hf).isIntegral,
    ← minpoly.eq_of_irreducible (f.irreducible_minpolyX hf) f.minpolyX_aeval_X, mul_comm,
    natDegree_C_mul <| inv_ne_zero <| leadingCoeff_ne_zero.mpr fun H ↦
    hf ((minpolyX_eq_zero_iff f).mp H), natDegree_minpolyX]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IntermediateField/Varianta4fca8790e7c3d9eaee91de552e0cd3e53d1400e4cad68a3a4074374033a292a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IntermediateField/Varianta4fca8790e7c3d9eaee91de552e0cd3e53d1400e4cad68a3a4074374033a292a.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a4a0084c293320bd5041e8aadb87ebcb7de4b95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
