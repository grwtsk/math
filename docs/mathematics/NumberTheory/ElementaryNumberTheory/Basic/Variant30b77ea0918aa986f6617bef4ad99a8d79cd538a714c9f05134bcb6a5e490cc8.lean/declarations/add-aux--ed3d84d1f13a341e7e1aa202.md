# add.aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9722e2373e6d49b7ec3e635a6125af895c9940b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1fe6e378-85a1-f51e-80f9-ac9c46f1ebf8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46eb8c26-d74e-a361-1b0c-05928259c16c",
  "kind": "theorem",
  "lexical_name": "add.aux",
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
  "slug": "add-aux--ed3d84d1f13a341e7e1aa202",
  "source": {
    "blob": "9722e2373e6d49b7ec3e635a6125af895c9940b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 227,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed3d84d1f13a341e7e1aa20283df2764fd8e77233cc9f86bab8cfc07c83a03fd",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46eb8c26-d74e-a361-1b0c-05928259c16c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add.aux (a b : Rat) {g ad bd} (hg : g = a.den.gcd b.den)
    (had : ad = a.den / g) (hbd : bd = b.den / g) :
    let den := ad * b.den; let num := a.num * bd + b.num * ad
    num.natAbs.gcd g = num.natAbs.gcd den := by
  intro den num
  have ae : ad * g = a.den := had ▸ Nat.div_mul_cancel (hg ▸ Nat.gcd_dvd_left ..)
  have be : bd * g = b.den := hbd ▸ Nat.div_mul_cancel (hg ▸ Nat.gcd_dvd_right ..)
  have hden : den = ad * bd * g := by rw [Nat.mul_assoc, be]
  rw [hden, Nat.Coprime.gcd_mul_left_cancel_right]
  have cop : ad.Coprime bd := had ▸ hbd ▸ hg ▸
    Nat.coprime_div_gcd_div_gcd (Nat.gcd_pos_of_pos_left _ a.den_pos)
  have H1 (d : Nat) :
      d.gcd num.natAbs ∣ a.num.natAbs * bd ↔ d.gcd num.natAbs ∣ b.num.natAbs * ad := by
    have := d.gcd_dvd_right num.natAbs
    rw [← Int.ofNat_dvd, Int.dvd_natAbs] at this
    have := Int.dvd_iff_dvd_of_dvd_add this
    rwa [← Int.dvd_natAbs, Int.ofNat_dvd, Int.natAbs_mul,
      ← Int.dvd_natAbs, Int.ofNat_dvd, Int.natAbs_mul] at this
  apply Nat.Coprime.mul_left
  · have := (H1 ad).2 <| Nat.dvd_trans (Nat.gcd_dvd_left ..) (Nat.dvd_mul_left ..)
    have := (cop.coprime_dvd_left <| Nat.gcd_dvd_left ..).dvd_of_dvd_mul_right this
    exact Nat.eq_one_of_dvd_one <| a.reduced.gcd_eq_one ▸ Nat.dvd_gcd this <|
      Nat.dvd_trans (Nat.gcd_dvd_left ..) (ae ▸ Nat.dvd_mul_right ..)
  · have := (H1 bd).1 <| Nat.dvd_trans (Nat.gcd_dvd_left ..) (Nat.dvd_mul_left ..)
    have := (cop.symm.coprime_dvd_left <| Nat.gcd_dvd_left ..).dvd_of_dvd_mul_right this
    exact Nat.eq_one_of_dvd_one <| b.reduced.gcd_eq_one ▸ Nat.dvd_gcd this <|
      Nat.dvd_trans (Nat.gcd_dvd_left ..) (be ▸ Nat.dvd_mul_right ..)

/--
Addition of rational numbers. (This definition is `@[irreducible]` because you don't want to
unfold it. Use `Rat.add_def` instead.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9722e2373e6d49b7ec3e635a6125af895c9940b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
