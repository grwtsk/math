# actualPhysicalPeriodicDensity_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:005c423a-75e5-1965-f052-382f97ab2c4b",
  "kind": "theorem",
  "lexical_name": "actualPhysicalPeriodicDensity_abs_le",
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
  "slug": "actualphysicalperiodicdensity-abs-le--850b7147f644a08c5aa626d1",
  "source": {
    "blob": "0c6fc08b9ed50d8a30fbf080bdea0376e5c2c6a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPhysicalPeriodicPrimitive/Variant397d7bddf4b8d6abbc31e7a818a842ba4c3860616d957ade7db1917e09a37770.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:850b7147f644a08c5aa626d182339162894427a4c1a649c4226031e9c0c98dcf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualPhysicalPeriodicPrimitive/Variant397d7bddf4b8d6abbc31e7a818a842ba4c3860616d957ade7db1917e09a37770.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:005c423a-75e5-1965-f052-382f97ab2c4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPhysicalPeriodicDensity_abs_le (U : ℕ) (x : ℝ) :
    |actualPhysicalPeriodicDensity U x| ≤ (U : ℝ) / 2 := by
  unfold actualPhysicalPeriodicDensity
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 U, |(moebius d : ℝ) * actualDivisorPeriodicResidual d (Nat.floor x)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _d ∈ Finset.Icc 1 U, (1 / 2 : ℝ) := by
      apply Finset.sum_le_sum
      intro d hd
      rw [abs_mul]
      have hm : |(moebius d : ℝ)| ≤ 1 := by exact_mod_cast (abs_moebius_le_one (n := d))
      have hr := actualDivisorPeriodicResidual_abs_le_half d (Nat.floor x) (Finset.mem_Icc.mp hd).1
      nlinarith [abs_nonneg (actualDivisorPeriodicResidual d (Nat.floor x))]
    _ = _ := by simp [Nat.card_Icc]; ring

/-- Every finite interval is genuinely L1, including those crossing integer seams. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualPhysicalPeriodicPrimitive/Variant397d7bddf4b8d6abbc31e7a818a842ba4c3860616d957ade7db1917e09a37770.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPhysicalPeriodicPrimitive/Variant397d7bddf4b8d6abbc31e7a818a842ba4c3860616d957ade7db1917e09a37770.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c6fc08b9ed50d8a30fbf080bdea0376e5c2c6a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
