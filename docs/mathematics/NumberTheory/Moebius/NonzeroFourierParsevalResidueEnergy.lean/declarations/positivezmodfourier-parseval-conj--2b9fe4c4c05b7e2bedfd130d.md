# positiveZModFourier_parseval_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa019588-aa52-6780-2720-3b6666038726",
  "kind": "theorem",
  "lexical_name": "positiveZModFourier_parseval_conj",
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
  "slug": "positivezmodfourier-parseval-conj--2b9fe4c4c05b7e2bedfd130d",
  "source": {
    "blob": "039b222f2d10086d9481a4d5fc16b3577a006052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 46,
    "path": "GRWTSK/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b9fe4c4c05b7e2bedfd130de7f0fd863820b10c76ac74e108c4ae6a128ca59e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa019588-aa52-6780-2720-3b6666038726`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveZModFourier_parseval_conj
    {N : ℕ} [NeZero N]
    (Φ : ZMod N → ℂ) :
    (∑ k : ZMod N,
      conj (positiveZModFourier Φ k) *
        positiveZModFourier Φ k) =
      (N : ℂ) *
        ∑ a : ZMod N, conj (Φ a) * Φ a := by
  classical
  unfold positiveZModFourier
  simp_rw [map_sum, map_mul, map_neg_eq_conj]
  simp_rw [Finset.sum_mul_sum]
  rw [Finset.sum_comm]
  simp_rw [Finset.sum_comm (s := Finset.univ)]
  simp_rw [← Finset.mul_sum]
  have horth (a c : ZMod N) :
      (∑ k : ZMod N,
        ZMod.stdAddChar (k * a) *
          ZMod.stdAddChar (-(k * c))) =
        if a = c then (N : ℂ) else 0 := by
    rw [← Finset.sum_congr rfl (fun k _ => by
      rw [← map_add_eq_mul]
      congr 2
      ring)]
    simpa [sub_eq_zero] using
      AddChar.sum_mulShift (a - c)
        (ZMod.isPrimitive_stdAddChar N)
  simp_rw [horth]
  simp only [ite_mul, zero_mul, Finset.sum_ite_eq',
    Finset.mem_univ, ite_true]
  ring

/-- Real norm-square Parseval identity for the positive transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `039b222f2d10086d9481a4d5fc16b3577a006052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
