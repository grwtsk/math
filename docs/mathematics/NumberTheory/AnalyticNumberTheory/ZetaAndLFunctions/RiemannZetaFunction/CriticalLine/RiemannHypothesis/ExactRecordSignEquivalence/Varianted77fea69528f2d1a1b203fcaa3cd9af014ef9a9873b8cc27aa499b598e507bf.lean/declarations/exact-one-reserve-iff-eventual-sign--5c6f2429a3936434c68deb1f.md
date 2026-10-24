# exact_one_reserve_iff_eventual_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cc939af-17c0-9a50-43c8-2da2d6907170",
  "kind": "theorem",
  "lexical_name": "exact_one_reserve_iff_eventual_sign",
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
  "slug": "exact-one-reserve-iff-eventual-sign--5c6f2429a3936434c68deb1f",
  "source": {
    "blob": "5f908ab664da80b05f21401addf88269dd657c63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExactRecordSignEquivalence/Varianted77fea69528f2d1a1b203fcaa3cd9af014ef9a9873b8cc27aa499b598e507bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c6f2429a3936434c68deb1fb8eb1618b915faf1914d6f54956a90fd8e01c2dd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExactRecordSignEquivalence/Varianted77fea69528f2d1a1b203fcaa3cd9af014ef9a9873b8cc27aa499b598e507bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cc939af-17c0-9a50-43c8-2da2d6907170`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_one_reserve_iff_eventual_sign :
    ExactOneRecordReserve ↔ OrdinaryPrimeEventualSignSupplier := by
  constructor
  · rintro ⟨N, hN, hstart, hbound⟩
    have hE : 0 ≤ -ordinaryPrimePrimitive N := by linarith
    apply one_energy_reserve_implies_eventualSign (R := -ordinaryPrimePrimitive N)
      hN hE _ le_rfl hbound
    linarith
  · rintro ⟨R, hR, hpath⟩
    obtain ⟨N, hRN⟩ := exists_nat_gt R
    have hN : 2 ≤ N := by exact_mod_cast (hR.trans hRN.le)
    have hstart := hpath N hRN.le
    have hE : 0 ≤ -ordinaryPrimePrimitive N := by linarith
    refine ⟨N, hN, hstart, (one_energy_bound_iff_prefix_bound hE).mpr ?_⟩
    intro K
    have hNK : R ≤ (N + K : ℕ) := by
      have hcast : (N : ℝ) ≤ (N + K : ℕ) := by exact_mod_cast (Nat.le_add_right N K)
      exact hRN.le.trans hcast
    have h := hpath (N + K : ℕ) hNK
    linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExactRecordSignEquivalence/Varianted77fea69528f2d1a1b203fcaa3cd9af014ef9a9873b8cc27aa499b598e507bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExactRecordSignEquivalence/Varianted77fea69528f2d1a1b203fcaa3cd9af014ef9a9873b8cc27aa499b598e507bf.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f908ab664da80b05f21401addf88269dd657c63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
