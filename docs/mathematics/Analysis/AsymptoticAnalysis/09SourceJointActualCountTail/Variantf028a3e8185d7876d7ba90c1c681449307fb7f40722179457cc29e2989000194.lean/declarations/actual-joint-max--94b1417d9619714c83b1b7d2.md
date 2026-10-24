# actual_joint_max

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd64b593-ded5-deef-122a-804ca9adac87",
  "kind": "theorem",
  "lexical_name": "actual_joint_max",
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
  "slug": "actual-joint-max--94b1417d9619714c83b1b7d2",
  "source": {
    "blob": "59ec08162eabfe580aa3498f4a09893d00d5f856",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 110,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/09SourceJointActualCountTail/Variantf028a3e8185d7876d7ba90c1c681449307fb7f40722179457cc29e2989000194.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94b1417d9619714c83b1b7d281b5374d7c0a67a45988646da1bc61819bf5f4c4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/09SourceJointActualCountTail/Variantf028a3e8185d7876d7ba90c1c681449307fb7f40722179457cc29e2989000194.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd64b593-ded5-deef-122a-804ca9adac87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_joint_max {A_six A_local : ℝ} (hSix : 1 ≤ A_six)
    (hlocal : Tail.LocalCount (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ).im)
      (fun ρ => (zetaZeros zetaSeam).mult ρ) A_local)
    (hcount : ∀ R : ℝ, 4 ≤ R →
      Summable (fun ρ : (zetaZeros zetaSeam).carrier =>
        if R ≤ |(ρ : ℂ).im| then
          ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6 else 0) ∧
      actualZeroSixTail R ≤ 2 * A_six * (Real.log R + 2) / R ^ 5) :
    1 ≤ max A_six A_local ∧
    Tail.LocalCount (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ).im)
      (fun ρ => (zetaZeros zetaSeam).mult ρ) (max A_six A_local) ∧
    (∀ R : ℝ, 4 ≤ R →
      Summable (fun ρ : (zetaZeros zetaSeam).carrier =>
        if R ≤ |(ρ : ℂ).im| then
          ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6 else 0) ∧
      actualZeroSixTail R ≤ 2 * max A_six A_local * (Real.log R + 2) / R ^ 5) ∧
    (∀ A R : ℝ, 91 ≤ A → 4 ≤ R →
      ‖actualZeroHeightTail A R‖ ≤
        9000000 * max A_six A_local * Real.exp A * (Real.log R + 2) /
          (A ^ 9 * R ^ 5)) ∧
    (∀ η Q A : ℝ, 1 ≤ η → 91 ≤ Q → Q ≤ A →
      ‖actualZeroHeightTail A (actualAdaptiveSharpHeight η A)‖ ≤
        actualAdaptiveSharpTailCost (max A_six A_local) η Q) := by
  have hA0 : 1 ≤ max A_six A_local := hSix.trans (le_max_left _ _)
  have hlocalMax := localCount_mono (le_max_right A_six A_local) hlocal
  have hcountMax : ∀ R : ℝ, 4 ≤ R →
      Summable (fun ρ : (zetaZeros zetaSeam).carrier =>
        if R ≤ |(ρ : ℂ).im| then
          ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6 else 0) ∧
      actualZeroSixTail R ≤ 2 * max A_six A_local * (Real.log R + 2) / R ^ 5 := by
    intro R hR
    obtain ⟨hsm, hb⟩ := hcount R hR
    have hlog : 0 ≤ Real.log R := Real.log_nonneg (by linarith)
    refine ⟨hsm, hb.trans ?_⟩
    gcongr
    exact le_max_left _ _
  have htailMax := sharp_tail_of_six (max A_six A_local) hcountMax
  exact ⟨hA0, hlocalMax, hcountMax, htailMax,
    adaptive_tail_of_sharp (max A_six A_local) hA0 htailMax⟩

/-- Construct one actual count witness with every exposed comparison contract. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/09SourceJointActualCountTail/Variantf028a3e8185d7876d7ba90c1c681449307fb7f40722179457cc29e2989000194.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/09SourceJointActualCountTail/Variantf028a3e8185d7876d7ba90c1c681449307fb7f40722179457cc29e2989000194.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59ec08162eabfe580aa3498f4a09893d00d5f856` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
