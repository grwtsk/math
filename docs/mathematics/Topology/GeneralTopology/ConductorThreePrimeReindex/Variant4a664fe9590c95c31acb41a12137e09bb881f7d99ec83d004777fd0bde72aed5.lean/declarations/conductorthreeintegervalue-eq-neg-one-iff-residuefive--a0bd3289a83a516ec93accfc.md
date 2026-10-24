# conductorThreeIntegerValue_eq_neg_one_iff_residueFive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1062b5fa7329ef1f6dd1a17ef544067d18c2647c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 262,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:537274be-1b2e-11da-7eb7-d6fbfac368ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e02e827a-acc7-aa1c-3564-751600db7147",
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
  "slug": "conductorthreeintegervalue-eq-neg-one-iff-residuefive--a0bd3289a83a516ec93accfc",
  "source": {
    "blob": "1062b5fa7329ef1f6dd1a17ef544067d18c2647c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 262,
    "path": "GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variant4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0bd3289a83a516ec93accfc6b2e3ede0f92daa041efb05a5bb3fc2ad9e72a8c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConductorThreePrimeReindex/Variant4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e02e827a-acc7-aa1c-3564-751600db7147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–285.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConductorThreePrimeReindex/Variant4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variant4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1062b5fa7329ef1f6dd1a17ef544067d18c2647c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
