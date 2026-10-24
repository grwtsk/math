# conductorThreeIntegerValue_eq_neg_one_iff_residueFive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e509e5a6-23e8-35e0-087e-af58bdee275a",
  "kind": "theorem",
  "lexical_name": "conductorThreeIntegerValue_eq_neg_one_iff_residueFive",
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
  "slug": "conductorthreeintegervalue-eq-neg-one-iff-residuefive--3ae9b5b4577028207d898ea1",
  "source": {
    "blob": "db8181eba682ff15d4baf598fbcb3c8815994841",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 270,
    "path": "GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ae9b5b4577028207d898ea19bbc208be6342dc058857bec55164f529bcc2152",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e509e5a6-23e8-35e0-087e-af58bdee275a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreeIntegerValue_eq_neg_one_iff_residueFive
    {p : ℕ} (hp : p.Prime) (hp3 : 3 < p) :
    conductorThreeIntegerValue p = -1 ↔ p ≡ 5 [MOD 6] := by
  have helig : IsEligibleResidueSixPrime p :=
    (eligibleResidueSixPrime_iff_prime_and_three_lt p).2 ⟨hp, hp3⟩
  rcases helig with hOne | hFive
  · have hmod3 : p ≡ 1 [MOD 3] := hOne.2.of_dvd (by norm_num)
    have hval : conductorThreeIntegerValue p = 1 :=
      conductorThreeIntegerValue_mod_one hmod3
    constructor
    · intro hneg
      omega
    · intro hFiveMod
      exact False.elim (residuePrime_disjoint p ⟨hOne, ⟨hp, hFiveMod⟩⟩)
  · have hmod3 : p ≡ 2 [MOD 3] := by
      have := hFive.2.of_dvd (by norm_num : 3 ∣ 6)
      norm_num [Nat.ModEq] at this ⊢
      exact this
    have hval : conductorThreeIntegerValue p = -1 :=
      conductorThreeIntegerValue_mod_two hmod3
    exact ⟨fun _ ↦ hFive.2, fun _ ↦ hval⟩

/-! ## Two-sided Chebyshev-order reindexing -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db8181eba682ff15d4baf598fbcb3c8815994841` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
