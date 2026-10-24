# floor_real_sqrt_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32b9014b-cffc-be28-06f6-8851334ffa96",
  "kind": "theorem",
  "lexical_name": "floor_real_sqrt_natCast",
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
  "slug": "floor-real-sqrt-natcast--1c8ec844c2187e5521b17219",
  "source": {
    "blob": "3d0eef3f07450b8199acad938667e8229ec1654f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 370,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c8ec844c2187e5521b1721906bb67d577a7ff58cc41fe2890edec3250547272",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32b9014b-cffc-be28-06f6-8851334ffa96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem floor_real_sqrt_natCast (N : Nat) :
    ⌊Real.sqrt (N : Real)⌋₊ = Nat.sqrt N := by
  rw [Nat.floor_eq_iff (Real.sqrt_nonneg _)]
  let s := Nat.sqrt N
  have hs0 : (0 : Real) <= s := by positivity
  have hsqlo : (s : Real) ^ 2 <= (N : Real) := by
    have h := Nat.sqrt_le N
    dsimp [s]
    have h' : ((Nat.sqrt N * Nat.sqrt N : Nat) : Real) <= (N : Real) := by
      exact_mod_cast h
    simpa [pow_two, Nat.cast_mul] using h'
  have hsqhi : (N : Real) < ((s : Real) + 1) ^ 2 := by
    have h := Nat.lt_succ_sqrt N
    dsimp [s]
    simp only [Nat.succ_eq_add_one] at h
    have h' : (N : Real) <
        (((Nat.sqrt N + 1) * (Nat.sqrt N + 1) : Nat) : Real) := by
      exact_mod_cast h
    simpa [pow_two, Nat.cast_mul, Nat.cast_add, Nat.cast_one] using h'
  have hlo : (s : Real) <= Real.sqrt N := by
    rw [← Real.sqrt_sq hs0]
    exact Real.sqrt_le_sqrt hsqlo
  have hsqrt2 : Real.sqrt (N : Real) ^ 2 = N :=
    Real.sq_sqrt (by positivity)
  have hhi : Real.sqrt (N : Real) < (s : Real) + 1 := by
    nlinarith [Real.sqrt_nonneg (N : Real)]
  exact ⟨hlo, hhi⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d0eef3f07450b8199acad938667e8229ec1654f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
