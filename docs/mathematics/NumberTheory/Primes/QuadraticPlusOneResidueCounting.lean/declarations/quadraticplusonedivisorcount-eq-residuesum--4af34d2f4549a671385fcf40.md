# quadraticPlusOneDivisorCount_eq_residueSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9649eca6-1269-9bcd-f8fc-fca15518bd2f",
  "kind": "theorem",
  "lexical_name": "quadraticPlusOneDivisorCount_eq_residueSum",
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
  "slug": "quadraticplusonedivisorcount-eq-residuesum--4af34d2f4549a671385fcf40",
  "source": {
    "blob": "bbe7c3452218ba2df97fb4086c983e0a1bbcd741",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 150,
    "path": "GRWTSK/NumberTheory/Primes/QuadraticPlusOneResidueCounting.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4af34d2f4549a671385fcf4015684b06671ca264c87acd59f3db409578e12ff5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/QuadraticPlusOneResidueCounting.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9649eca6-1269-9bcd-f8fc-fca15518bd2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticPlusOneDivisorCount_eq_residueSum
    {d X : ℕ} (hd : 0 < d) :
    quadraticPlusOneDivisorCount d X =
      ∑ a ∈ quadraticPlusOneResidues d,
        quadraticPlusOneResidueClassCount d X a := by
  classical
  let S := (Finset.Icc 1 X).filter
    (fun n => d ∣ n ^ 2 + 1)
  have hmaps :
      (S : Set ℕ).MapsTo (fun n => n % d)
        (quadraticPlusOneResidues d : Set ℕ) := by
    intro n hn
    rcases Finset.mem_filter.mp hn with ⟨hnIcc, hdiv⟩
    change n % d ∈ quadraticPlusOneResidues d
    rw [mem_quadraticPlusOneResidues]
    constructor
    · exact Nat.mod_lt n hd
    · have hmod : n % d ≡ n [MOD d] := Nat.mod_modEq n d
      have hsq : (n % d) ^ 2 + 1 ≡ n ^ 2 + 1 [MOD d] := by
        exact (hmod.pow 2).add_right 1
      exact (hsq.dvd_iff dvd_rfl).2 hdiv
  unfold quadraticPlusOneDivisorCount
  change S.card = _
  rw [Finset.card_eq_sum_card_fiberwise hmaps]
  apply Finset.sum_congr rfl
  intro a ha
  unfold quadraticPlusOneResidueClassCount S
  apply congrArg Finset.card
  ext n
  rcases mem_quadraticPlusOneResidues.mp ha with
    ⟨haD, haRoot⟩
  simp only [Finset.mem_filter, Finset.mem_Icc,
    Finset.mem_Ioc]
  constructor
  · rintro ⟨⟨⟨hn1, hnX⟩, hdiv⟩, hrem⟩
    refine ⟨⟨by omega, hnX⟩, ?_⟩
    rw [Nat.ModEq]
    rw [hrem, Nat.mod_eq_of_lt haD]
  · rintro ⟨⟨hn0, hnX⟩, hmod⟩
    have hn1 : 1 ≤ n := by omega
    have hsq : n ^ 2 + 1 ≡ a ^ 2 + 1 [MOD d] := by
      exact (hmod.pow 2).add_right 1
    have hdiv : d ∣ n ^ 2 + 1 :=
      (hsq.dvd_iff dvd_rfl).2 haRoot
    have hrem : n % d = a := by
      rw [Nat.ModEq] at hmod
      simpa [Nat.mod_eq_of_lt haD] using hmod
    exact ⟨⟨⟨hn1, hnX⟩, hdiv⟩, hrem⟩

/-- Exact complete-block plus endpoint-correction formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/QuadraticPlusOneResidueCounting.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/QuadraticPlusOneResidueCounting.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbe7c3452218ba2df97fb4086c983e0a1bbcd741` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
