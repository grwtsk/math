# packing_reduction_threshold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92ceff8d-8d03-c18b-af71-d20ad1dcce98",
  "kind": "theorem",
  "lexical_name": "packing_reduction_threshold",
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
  "slug": "packing-reduction-threshold--5398b236289000ea0238d73e",
  "source": {
    "blob": "31892397b4f508e0e077c8704f7ecf21c2a4811e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 94,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5398b236289000ea0238d73e04be010430c1ccf3dc95bdc71c0ea0db17ffd509",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92ceff8d-8d03-c18b-af71-d20ad1dcce98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem packing_reduction_threshold (y : ℕ) (p : DivisibilityPacking.primeSupport y)
    (a : ZMod (DivisibilityPacking.Modulus y)) :
    DivisibilityPacking.localReduction y p a = 0 ↔ cyclicColor a 0 ≤ packingKernelDivisor y p := by
  rw [cyclicColor_threshold]
  change DivisibilityPacking.localReduction y p a = 0 ↔ (packingKernelDivisor y p).val • (a - 0) = 0
  simp only [sub_zero]
  rw [← ZMod.natCast_zmod_val a, map_natCast, nsmul_eq_mul, ← Nat.cast_mul,
    ZMod.natCast_eq_zero_iff, ZMod.natCast_eq_zero_iff]
  have hM : DivisibilityPacking.Modulus y = (packingKernelDivisor y p).val * (p : ℕ) :=
    (Nat.div_mul_cancel (Finset.dvd_prod_of_mem id p.property)).symm
  exact (Nat.mul_dvd_mul_iff_left (packingKernelDivisor y p).pos).symm.trans
    (Eq.to_iff (congrArg (fun m : ℕ => m ∣ (packingKernelDivisor y p).val * a.val) hM.symm))

/-- Each forbidden residue is precisely a translate of an actual divisor congruence class. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31892397b4f508e0e077c8704f7ecf21c2a4811e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
