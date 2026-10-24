# numerator_one_mod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00af2472-2a90-2f1a-0f9b-387d0b7f6dd5",
  "kind": "theorem",
  "lexical_name": "numerator_one_mod",
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
  "slug": "numerator-one-mod--ea182d58a2bf69f13b7365f8",
  "source": {
    "blob": "fa69112d19301b64b957e771f64bc721fb4d76cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 76,
    "path": "GRWTSK/NumberTheory/Height/WeierstrassJetDenominator.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea182d58a2bf69f13b7365f800415c5021a60f5d4f0f04d194d07e503b4c4e20",
  "verification": {
    "reference": "docs/verification/NumberTheory/Height/WeierstrassJetDenominator.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00af2472-2a90-2f1a-0f9b-387d0b7f6dd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem numerator_one_mod (A : ℤ) (n N k : ℕ) (hA : (n : ℤ) ∣ A)
    (hk : 2≤k) (hN : k≤N+1) :
    (n : ℤ) ∣ (numeratorPolynomial A (n : ℤ) N).coeff k-1 := by
  let f : ℤ[X] →+* (ZMod n)[X] := Polynomial.mapRingHom (Int.castRingHom (ZMod n))
  have hAz : (A : ZMod n)=0 := (ZMod.intCast_zmod_eq_zero_iff_dvd A n).mpr hA
  have hm := map_iterate f (C A) (C (n : ℤ)) (X : ℤ[X]) N
  have hc := congrArg (fun p : (ZMod n)[X] => p.coeff k) hm
  have hh : ((numeratorPolynomial A (n : ℤ) N).coeff k : ZMod n)=1 := by
    simpa [f,numeratorPolynomial,hAz,geometric_coefficient N k hk hN] using hc
  apply (ZMod.intCast_zmod_eq_zero_iff_dvd _ n).mp
  simpa only [Int.cast_sub,Int.cast_one,hh,sub_self]

/-- Elementary cancellation at ALL prime powers, derived from p=1 modulo n. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Height/WeierstrassJetDenominator.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Height/WeierstrassJetDenominator.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa69112d19301b64b957e771f64bc721fb4d76cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
