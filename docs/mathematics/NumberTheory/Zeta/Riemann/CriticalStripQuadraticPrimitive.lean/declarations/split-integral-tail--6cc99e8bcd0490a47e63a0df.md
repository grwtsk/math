# split_integral_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b291e2a-6a96-671a-84b8-fb0b7c13a181",
  "kind": "lemma",
  "lexical_name": "split_integral_tail",
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
  "slug": "split-integral-tail--6cc99e8bcd0490a47e63a0df",
  "source": {
    "blob": "ea2bb13499f413f3c585ce3b837d538180713172",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 247,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuadraticPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cc99e8bcd0490a47e63a0dfb1aec5d86bb1ef1ce334094a0e3811ad77f85e15",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripQuadraticPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b291e2a-6a96-671a-84b8-fb0b7c13a181`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma split_integral_tail {f : ℝ → ℂ} (hf : IntegrableOn f (Ioi 1))
    {T : ℝ} (hT : 1 ≤ T) :
    (∫ t : ℝ in Ioi 1, f t) = (∫ t : ℝ in (1 : ℝ)..T, f t) + ∫ t in Ioi T, f t := by
  have hd : Disjoint (Ioc (1 : ℝ) T) (Ioi T) := by
    apply Set.disjoint_left.mpr
    intro t ht hgt
    exact (not_lt_of_ge ht.2) hgt
  have hu : Ioc (1 : ℝ) T ∪ Ioi T = Ioi 1 := by
    ext t; constructor
    · rintro (h | h)
      · exact h.1
      · exact hT.trans_lt h
    · intro ht
      by_cases hb : t ≤ T
      · exact Or.inl ⟨ht, hb⟩
      · exact Or.inr (lt_of_not_ge hb)
  rw [intervalIntegral.integral_of_le hT]
  simpa only [hu] using setIntegral_union hd measurableSet_Ioi
    (hf.mono_set Ioc_subset_Ioi_self) (hf.mono_set (Ioi_subset_Ioi hT))

/-- The full source equality is obtained by a finite telescope and two vanishing,
independently integrable tails, not by a global derivative at integer seams. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripQuadraticPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuadraticPrimitive.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea2bb13499f413f3c585ce3b837d538180713172` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
