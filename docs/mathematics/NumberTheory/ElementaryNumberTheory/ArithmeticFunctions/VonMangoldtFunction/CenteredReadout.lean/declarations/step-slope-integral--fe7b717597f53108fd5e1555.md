# step_slope_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8682c9d4-0055-cc3b-1265-ee02b7b6a31d",
  "kind": "theorem",
  "lexical_name": "step_slope_integral",
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
  "slug": "step-slope-integral--fe7b717597f53108fd5e1555",
  "source": {
    "blob": "c7a590f15febb04470681a81883b1dfbd5e635b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 65,
    "path": "GRWTSK/NumberTheory/VonMangoldt/CenteredReadout.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe7b717597f53108fd5e155541371a82f006104eb15e86312a7ae43ca81f9c6d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/CenteredReadout.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8682c9d4-0055-cc3b-1265-ee02b7b6a31d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem step_slope_integral {r : ℝ} (hr : r∈Icc (0:ℝ) 1) :
    (∫ t, step r t*φ.slope t ∂unitVolume)=φ.value 1-φ.value r := by
  have heq : (fun t ↦ step r t*φ.slope t)=
      (Ici r).indicator φ.slope := by
    funext t
    by_cases h : r≤t <;> simp [step, Set.indicator, h]
  have hset : Icc (0:ℝ) 1 ∩ Ici r=Icc r 1 := by
    ext t
    simp only [mem_inter_iff, mem_Icc, mem_Ici]
    constructor
    · rintro ⟨⟨h0,h1⟩,hrt⟩
      exact ⟨hrt,h1⟩
    · rintro ⟨hrt,ht1⟩
      exact ⟨⟨hr.1.trans hrt,ht1⟩,hrt⟩
  rw [heq]
  change (∫ t in Icc (0:ℝ) 1, (Ici r).indicator φ.slope t)=_
  rw [setIntegral_indicator measurableSet_Ici, hset, integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le hr.2]
  have hsub : Icc r 1 ⊆ Icc (0:ℝ) 1 := by
    intro t ht
    exact ⟨hr.1.trans ht.1,ht.2⟩
  exact intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t ht ↦ φ.hasDeriv t (hsub (by simpa [uIcc_of_le hr.2] using ht)))
    ((φ.slope_continuous.mono hsub).intervalIntegrable_of_Icc hr.2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/CenteredReadout.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/VonMangoldt/CenteredReadout.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7a590f15febb04470681a81883b1dfbd5e635b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
