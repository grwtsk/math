# ringEquivOfCardEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8efbabec73cc2598935f215844bf33775232ee7fc894d1abd867ef74bd0546b",
  "kind": "def",
  "lexical_name": "ringEquivOfCardEq",
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
  "slug": "ringequivofcardeq--83a02d7656f27c107eb30269",
  "source": {
    "blob": "48b7d8120869d2915cfc8820a95242933d6db3e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 230,
    "path": "GRWTSK/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83a02d7656f27c107eb30269db14f2d72efb62c15fcf08741df9119f6b9d0260",
  "verification": {
    "reference": "docs/verification/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8efbabec73cc2598935f215844bf33775232ee7fc894d1abd867ef74bd0546b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ringEquivOfCardEq (hKK' : Fintype.card K = Fintype.card K') : K ≃+* K' := by
  choose p _char_p_K using CharP.exists K
  choose p' _char_p'_K' using CharP.exists K'
  choose n hp hK using FiniteField.card K p
  choose n' hp' hK' using FiniteField.card K' p'
  have hpp' : p = p' := by
    by_contra hne
    have h2 := Nat.coprime_pow_primes n n' hp hp' hne
    rw [(Eq.congr hK hK').mp hKK', Nat.coprime_self, pow_eq_one_iff (PNat.ne_zero n')] at h2
    exact Nat.Prime.ne_one hp' h2
  rw [← hpp'] at _char_p'_K'
  haveI := fact_iff.2 hp
  letI : Algebra (ZMod p) K := ZMod.algebra _ _
  letI : Algebra (ZMod p) K' := ZMod.algebra _ _
  exact ↑(algEquivOfCardEq p hKK')
#align finite_field.ring_equiv_of_card_eq FiniteField.ringEquivOfCardEq

end FiniteField
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48b7d8120869d2915cfc8820a95242933d6db3e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
