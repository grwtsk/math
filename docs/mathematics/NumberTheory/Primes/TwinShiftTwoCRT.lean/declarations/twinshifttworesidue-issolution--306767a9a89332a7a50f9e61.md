# twinShiftTwoResidue_isSolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3b19801-bbcb-29cd-1564-42b592895af4",
  "kind": "theorem",
  "lexical_name": "twinShiftTwoResidue_isSolution",
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
  "slug": "twinshifttworesidue-issolution--306767a9a89332a7a50f9e61",
  "source": {
    "blob": "8b6287ffb38838f8d9b2e7eeadd2de64ad4542d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 207,
    "path": "GRWTSK/NumberTheory/Primes/TwinShiftTwoCRT.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:306767a9a89332a7a50f9e61ac7bc04c3b03af57064f3e845b793a977333182e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/TwinShiftTwoCRT.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3b19801-bbcb-29cd-1564-42b592895af4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twinShiftTwoResidue_isSolution
    {d e : ℕ} (hd : 0 < d) (he : 0 < e)
    (hcompat : TwinShiftTwoCompatible d e) :
    d ∣ twinShiftTwoResidue d e hd he hcompat ∧
      e ∣ twinShiftTwoResidue d e hd he hcompat + 2 := by
  let n := Nat.find ((naturalSolution_iff_compatible hd he).2 hcompat)
  have hn : d ∣ n ∧ e ∣ n + 2 :=
    Nat.find_spec ((naturalSolution_iff_compatible hd he).2 hcompat)
  let L := Nat.lcm d e
  have hmod : n % L ≡ n [MOD L] := Nat.mod_modEq n L
  have hdres : d ∣ n % L :=
    (hmod.dvd_iff (Nat.dvd_lcm_left d e)).2 hn.1
  have hemod : n % L + 2 ≡ n + 2 [MOD L] :=
    hmod.add_right 2
  have heres : e ∣ n % L + 2 :=
    (hemod.dvd_iff (Nat.dvd_lcm_right d e)).2 hn.2
  simpa [twinShiftTwoResidue, n, L] using ⟨hdres, heres⟩

/-- The canonical residue lies in one complete lcm period. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/TwinShiftTwoCRT.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/TwinShiftTwoCRT.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b6287ffb38838f8d9b2e7eeadd2de64ad4542d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
