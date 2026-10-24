# cyclicFejerKernel_sum_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:254e22c7-9e87-143d-dd28-8f626e584aea",
  "kind": "theorem",
  "lexical_name": "cyclicFejerKernel_sum_one",
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
  "slug": "cyclicfejerkernel-sum-one--67922c47603bb9800b33a23e",
  "source": {
    "blob": "0408948d4e9e53408016531639bc2e2ce627bc88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 28,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCyclic.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67922c47603bb9800b33a23e4ff5db73bf68b6d5f8506018299f855e848f898f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCyclic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:254e22c7-9e87-143d-dd28-8f626e584aea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclicFejerKernel_sum_one
    {X N : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N) :
    (∑ z : ZMod (fejerOctavePeriod X),
      cyclicFejerKernel X N z) = 1 := by
  rcases hreg with ⟨hX, hN, hNL⟩
  let L := fejerOctavePeriod X
  have hL : 0 < L := by
    dsimp [L, fejerOctavePeriod]
    omega
  haveI : NeZero L := ⟨Nat.ne_of_gt hL⟩
  let e : Fin L ≃ ZMod L := (ZMod.finEquiv L).toEquiv
  calc
    (∑ z : ZMod L, cyclicFejerKernel X N z)
      = ∑ i : Fin L, cyclicFejerKernel X N (e i) := by
          exact Fintype.sum_equiv e.symm _ _ (fun _ => rfl)
    _ = ∑ r ∈ Finset.range L,
        signedSampledTriangularKernelAtPeriod L N r := by
          rw [Fin.sum_univ_eq_sum_range]
          apply Finset.sum_congr rfl
          intro r hr
          have hrLt : r < L := Finset.mem_range.mp hr
          dsimp [e, cyclicFejerKernel]
          simp [ZMod.finEquiv, ZMod.val_natCast,
            Nat.mod_eq_of_lt hrLt, L]
    _ = 1 := by
          exact periodFourXSampledKernelMassOne
            ⟨hX, hN, hNL⟩

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCyclic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCyclic.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0408948d4e9e53408016531639bc2e2ce627bc88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
