# source_representation_ker_eq_jacobson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b00040a1-114c-d62e-6bf2-273a8b66bde9",
  "kind": "theorem",
  "lexical_name": "source_representation_ker_eq_jacobson",
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
  "slug": "source-representation-ker-eq-jacobson--03d1492a3029db25d021e8ac",
  "source": {
    "blob": "9b05500ea616cabc5d69c7f97abb5af97636d7e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 335,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCharacteristicInventory/Variant67e7e50637e8f4baf8301a28f852526b1e195df14f9b4d6cd6c7272d283886a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03d1492a3029db25d021e8ac51b03f67d1cd78371d0b558cae76acef3b76aba7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCharacteristicInventory/Variant67e7e50637e8f4baf8301a28f852526b1e195df14f9b4d6cd6c7272d283886a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b00040a1-114c-d62e-6bf2-273a8b66bde9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_representation_ker_eq_jacobson (A ξ : ℝ) :
    RingHom.ker (sourceRepresentation A ξ).toRingHom =
      Ring.jacobson (LowerPowerCharacteristicFiber A ξ) := by
  ext x
  rw [RingHom.mem_ker, source_characteristic_fiber_jacobson, Ideal.mem_pi]
  change (fun n : LowerPowerLabel A ↦
    representPhase (chi ξ (n : ℕ)) (chi_normSq ξ (n : ℕ)) (x n)) = 0 ↔
      ∀ n : LowerPowerLabel A,
        x n ∈ Ring.jacobson (CharacteristicFiber ((chi ξ (n : ℕ)).re : ℂ))
  constructor
  · intro h n
    rw [← represent_phase_ker_eq_jacobson (chi ξ (n : ℕ)) (chi_normSq ξ (n : ℕ))]
    exact RingHom.mem_ker.mpr (congrFun h n)
  · intro h
    funext n
    have hn : x n ∈ RingHom.ker
        (representPhase (chi ξ (n : ℕ)) (chi_normSq ξ (n : ℕ))).toRingHom := by
      rw [represent_phase_ker_eq_jacobson]
      exact h n
    exact RingHom.mem_ker.mp hn

/-- The all-phase product remains two dimensional per arithmetic label. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCharacteristicInventory/Variant67e7e50637e8f4baf8301a28f852526b1e195df14f9b4d6cd6c7272d283886a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCharacteristicInventory/Variant67e7e50637e8f4baf8301a28f852526b1e195df14f9b4d6cd6c7272d283886a3.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b05500ea616cabc5d69c7f97abb5af97636d7e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
