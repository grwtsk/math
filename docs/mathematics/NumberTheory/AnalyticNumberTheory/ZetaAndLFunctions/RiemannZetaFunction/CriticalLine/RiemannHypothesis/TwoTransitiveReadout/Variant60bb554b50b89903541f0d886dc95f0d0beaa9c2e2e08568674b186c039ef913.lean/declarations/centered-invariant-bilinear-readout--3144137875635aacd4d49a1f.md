# centered_invariant_bilinear_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41b07a24-95b7-a893-1ce7-08066e6dd731",
  "kind": "theorem",
  "lexical_name": "centered_invariant_bilinear_readout",
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
  "slug": "centered-invariant-bilinear-readout--3144137875635aacd4d49a1f",
  "source": {
    "blob": "689c763351713034dd1486e4fcd96ead083278d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TwoTransitiveReadout/Variant60bb554b50b89903541f0d886dc95f0d0beaa9c2e2e08568674b186c039ef913.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3144137875635aacd4d49a1f37e353eea8c32f6f1865be2cfa8829eabdcb9030",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TwoTransitiveReadout/Variant60bb554b50b89903541f0d886dc95f0d0beaa9c2e2e08568674b186c039ef913.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41b07a24-95b7-a893-1ce7-08066e6dd731`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centered_invariant_bilinear_readout {G : Type*} (ρ : G → Equiv.Perm (Fin 23))
    (htrans : TransitiveFamily ρ) (hpair : PairTransitiveFamily ρ)
    {M : Matrix (Fin 23) (Fin 23) ℚ} (hM : InvariantMatrix ρ M)
    {v : Fin 23 → ℚ} (hv : Centered v) (w : Fin 23 → ℚ) :
    (∑ i, w i * M.mulVec v i) = (M 0 0 - M 0 1) * ∑ i, w i * v i := by
  rw [centered_invariant_matrix_action ρ htrans hpair hM hv, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _hi
  change w i * ((M 0 0 - M 0 1) * v i) = _
  ring

end
end GRWTSK.RiemannHypothesis.Conversation.TwoTransitiveReadout
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TwoTransitiveReadout/Variant60bb554b50b89903541f0d886dc95f0d0beaa9c2e2e08568674b186c039ef913.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TwoTransitiveReadout/Variant60bb554b50b89903541f0d886dc95f0d0beaa9c2e2e08568674b186c039ef913.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `689c763351713034dd1486e4fcd96ead083278d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
