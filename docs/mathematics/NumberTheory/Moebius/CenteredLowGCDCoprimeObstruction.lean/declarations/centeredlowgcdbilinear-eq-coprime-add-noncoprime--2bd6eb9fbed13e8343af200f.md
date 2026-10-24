# centeredLowGCDBilinear_eq_coprime_add_nonCoprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef162e37-fa0c-b84f-73cd-10680fae72f4",
  "kind": "theorem",
  "lexical_name": "centeredLowGCDBilinear_eq_coprime_add_nonCoprime",
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
  "slug": "centeredlowgcdbilinear-eq-coprime-add-noncoprime--2bd6eb9fbed13e8343af200f",
  "source": {
    "blob": "f588503b27f220eb0bd5d192fcc8c14fa76128a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 48,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bd6eb9fbed13e8343af200f67b3fcb463691b1cb80ddfd4cd338138b1519bab",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef162e37-fa0c-b84f-73cd-10680fae72f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredLowGCDBilinear_eq_coprime_add_nonCoprime
    {X Y : ℕ}
    (hY : 1 ≤ Y)
    (w : ℕ → ℝ) :
    centeredLowGCDBilinear X Y w =
      centeredCoprimeBilinear X w +
        centeredNonCoprimeLowGCDBilinear X Y w := by
  unfold centeredLowGCDBilinear centeredCoprimeBilinear
    centeredNonCoprimeLowGCDBilinear
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro e he
  have hdI := Finset.mem_Icc.mp hd
  have hgpos : 0 < Nat.gcd d e :=
    Nat.gcd_pos_of_pos_left e (by omega)
  by_cases hcop : Nat.Coprime d e
  · simp [hcop, hY]
  · have hg1 : Nat.gcd d e ≠ 1 := by
      exact fun h =>
        hcop (Nat.coprime_iff_gcd_eq_one.mpr h)
    have hg2 : 2 ≤ Nat.gcd d e := by omega
    by_cases hgY : Nat.gcd d e ≤ Y
    · simp [hcop, hg2, hgY]
    · simp [hcop, hg2, hgY]


/-- Tail of centered modulus coefficients along multiples of `r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f588503b27f220eb0bd5d192fcc8c14fa76128a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
