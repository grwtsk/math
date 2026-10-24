# sourceEnergy_empty_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3b690f74328227b786b867372039d61a92b44d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/NumberTheory/Moebius/FiniteProductResponseIdentification.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d865a7ac-093b-5cab-b68e-26b312198ee0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:604a4cdf-f0ba-a386-1e16-6bd8404f6021",
  "kind": "theorem",
  "lexical_name": "sourceEnergy_empty_bound",
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
  "slug": "sourceenergy-empty-bound--673bf3751a49aaf11bc0612a",
  "source": {
    "blob": "f3b690f74328227b786b867372039d61a92b44d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 58,
    "path": "GRWTSK/NumberTheory/Moebius/FiniteProductResponseIdentification.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:673bf3751a49aaf11bc0612a19b767d9b151f60031ea7d44556589759a2e9381",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FiniteProductResponseIdentification.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:604a4cdf-f0ba-a386-1e16-6bd8404f6021`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceEnergy_empty_bound {T : ℝ} (hT : 0 ≤ T) :
    sourceEnergy ∅ T ≤ 4*T := by
  rw [sourceEnergy, primeState_empty, baseWave_eq_atom_one]
  have hi : IntegrableOn (fun u => atom 1 u ^ 2) (Icc 0 T) :=
    ((atom_continuous (by decide : 0 < 1)).pow 2).integrableOn_Icc
  have hc : IntegrableOn (fun _u : ℝ => (4 : ℝ)) (Icc 0 T) :=
    continuous_const.integrableOn_Icc
  have hbound : ∀ u ∈ Icc 0 T, atom 1 u ^ 2 ≤ 4 := by
    intro u hu
    have hlow := atom_nonneg (by decide : 0 < 1) u
    have hup : atom 1 u ≤ 2 := by
      simp only [atom, Nat.cast_one, Real.log_one, if_pos hu.1, Real.sqrt_one, inv_one]
      nlinarith [Real.exp_pos (-u/2)]
    nlinarith
  calc
    (∫ u in Icc 0 T, atom 1 u ^ 2) ≤ ∫ _u in Icc 0 T, (4 : ℝ) :=
      setIntegral_mono_on hi hc measurableSet_Icc hbound
    _ = 4*T := by
      rw [setIntegral_const, Real.volume_real_Icc_of_le hT]
      simp
      ring

end PPNCP04

#print axioms PPNCP04.completed_pickup_identification
#print axioms PPNCP04.sourceEnergy_completed
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FiniteProductResponseIdentification.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FiniteProductResponseIdentification.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3b690f74328227b786b867372039d61a92b44d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
