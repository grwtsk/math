# goldbachLiftedRationalArcCenter_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:321b95bf-9978-39b3-bdec-429ee9ea31c4",
  "kind": "theorem",
  "lexical_name": "goldbachLiftedRationalArcCenter_eq_iff",
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
  "slug": "goldbachliftedrationalarccenter-eq-iff--ce1cf98597ca772cbd7785f5",
  "source": {
    "blob": "d92f4cfddbfef7a5784ef4bb2784477f4a272269",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 90,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachRationalArcSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce1cf98597ca772cbd7785f58fbe822f9784feb077d211fc551e918b2630a853",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:321b95bf-9978-39b3-bdec-429ee9ea31c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachLiftedRationalArcCenter_eq_iff
    {Q a q b r : ℕ} {k l : ℤ}
    (ha : (a, q) ∈ goldbachRationalArcIndices Q)
    (hb : (b, r) ∈ goldbachRationalArcIndices Q) :
    goldbachLiftedRationalArcCenter a q k =
        goldbachLiftedRationalArcCenter b r l ↔
      (a, q) = (b, r) ∧ k = l := by
  constructor
  · intro hcenter
    have hca := goldbachRationalArcCenter_mem_Ico ha
    have hcb := goldbachRationalArcCenter_mem_Ico hb
    have hdiff :
        ((l - k : ℤ) : ℝ) =
          goldbachRationalArcCenter a q -
            goldbachRationalArcCenter b r := by
      rw [Int.cast_sub]
      unfold goldbachLiftedRationalArcCenter at hcenter
      linarith
    have hlower : (-1 : ℝ) < ((l - k : ℤ) : ℝ) := by
      rw [hdiff]
      linarith [hca.1, hcb.2]
    have hupper : ((l - k : ℤ) : ℝ) < 1 := by
      rw [hdiff]
      linarith [hca.2, hcb.1]
    have hlowerZ : (-1 : ℤ) < l - k := by
      exact_mod_cast hlower
    have hupperZ : l - k < (1 : ℤ) := by
      exact_mod_cast hupper
    have hzero : l - k = 0 := by omega
    have hkl : k = l := by omega
    have hfraction :
        goldbachRationalArcCenter a q =
          goldbachRationalArcCenter b r := by
      unfold goldbachLiftedRationalArcCenter at hcenter
      rw [hkl] at hcenter
      linarith
    rcases (mem_goldbachRationalArcIndices).1 ha with
      ⟨haQ, hqQ, hq, haq, hcoprimeA⟩
    rcases (mem_goldbachRationalArcIndices).1 hb with
      ⟨hbQ, hrQ, hr, hbr, hcoprimeB⟩
    have hq0 : (q : ℝ) ≠ 0 := by positivity
    have hr0 : (r : ℝ) ≠ 0 := by positivity
    unfold goldbachRationalArcCenter at hfraction
    field_simp [hq0, hr0] at hfraction
    have hcross : a * r = b * q := by
      exact_mod_cast (hfraction.trans (mul_comm (q : ℝ) b))
    exact
      ⟨goldbachReducedFraction_eq_of_cross_mul
          hq hr hcoprimeA hcoprimeB hcross,
        hkl⟩
  · rintro ⟨hpair, hkl⟩
    rcases Prod.mk.inj hpair with ⟨rfl, rfl⟩
    subst l
    rfl

/-- The integral numerator controlling the difference of two lifted centers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachRationalArcSeparation.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d92f4cfddbfef7a5784ef4bb2784477f4a272269` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
