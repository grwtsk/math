# gcdCutoffCorrectionIncidenceEquivFactor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4cf6bc48dabfbd08c267c3f2c7f96726a7772ff11de60eadfbc1ebe701f73b37",
  "kind": "def",
  "lexical_name": "gcdCutoffCorrectionIncidenceEquivFactor",
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
  "slug": "gcdcutoffcorrectionincidenceequivfactor--e9b198cb8131c640f456d6c2",
  "source": {
    "blob": "2ded7c30cf8a2ea3925ebc3902f0906a4cbcea94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 146,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9b198cb8131c640f456d6c25b42772fba0db4a0e00be60b8fb2f1cae7147f86",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4cf6bc48dabfbd08c267c3f2c7f96726a7772ff11de60eadfbc1ebe701f73b37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def gcdCutoffCorrectionIncidenceEquivFactor
    {X Y : ℕ} :
    {p : Σ _r : ℕ, ℕ //
      p ∈ gcdCutoffCorrectionIncidenceSet X Y} ≃
    {q : Σ _a : ℕ, ℕ //
      q ∈ gcdCutoffCorrectionFactorSet X Y} where
  toFun p := by
    rcases p with ⟨⟨r, a⟩, hp⟩
    have hp' := Finset.mem_sigma.mp hp
    rcases hp' with ⟨hr, ha⟩
    have ha' := Finset.mem_filter.mp ha
    have hadiv := (Nat.mem_divisors.mp ha'.1).1
    refine ⟨⟨a, r / a⟩, ?_⟩
    apply Finset.mem_sigma.mpr
    refine ⟨Finset.mem_Icc.mpr ha'.2, ?_⟩
    apply Finset.mem_filter.mpr
    have hapos : 0 < a := by omega
    have hrpos : 0 < r := by
      have := Finset.mem_Ioc.mp hr
      omega
    have hale : a ≤ r := Nat.le_of_dvd hrpos hadiv
    have hkpos : 0 < r / a := Nat.div_pos hale hapos
    have hmul : a * (r / a) = r :=
      Nat.mul_div_cancel' hadiv
    exact
      ⟨Finset.mem_Ioc.mpr ⟨hkpos, by omega⟩,
       by simpa [hmul] using
         (show Y < r ∧ r ≤ 4 * X from
           Finset.mem_Ioc.mp hr)⟩
  invFun q := by
    rcases q with ⟨⟨a, k⟩, hq⟩
    have hq' := Finset.mem_sigma.mp hq
    rcases hq' with ⟨ha, hk⟩
    have hk' := Finset.mem_filter.mp hk
    refine ⟨⟨a * k, a⟩, ?_⟩
    apply Finset.mem_sigma.mpr
    refine ⟨Finset.mem_Ioc.mpr hk'.2, ?_⟩
    apply Finset.mem_filter.mpr
    have hapos : 0 < a := by
      have := Finset.mem_Icc.mp ha
      omega
    have hkpos : 0 < k := (Finset.mem_Ioc.mp hk'.1).1
    have hprodne : a * k ≠ 0 :=
      Nat.mul_ne_zero (Nat.ne_of_gt hapos) (Nat.ne_of_gt hkpos)
    exact
      ⟨Nat.mem_divisors.mpr
          ⟨dvd_mul_right a k, hprodne⟩,
       Finset.mem_Icc.mp ha⟩
  left_inv p := by
    apply Subtype.ext
    apply Sigma.ext
    · exact Nat.mul_div_cancel'
        ((Nat.mem_divisors.mp
          (Finset.mem_filter.mp
            (Finset.mem_sigma.mp p.2).2).1).1)
    · simp
  right_inv q := by
    apply Subtype.ext
    apply Sigma.ext
    · rfl
    · have hq' := Finset.mem_sigma.mp q.2
      have hk' := Finset.mem_filter.mp hq'.2
      have hapos : 0 < q.1.1 := by
        have := Finset.mem_Icc.mp hq'.1
        omega
      simp [Nat.mul_div_left _ hapos]

/-- Coefficient-multiplicity weighted quotient-square mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ded7c30cf8a2ea3925ebc3902f0906a4cbcea94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
