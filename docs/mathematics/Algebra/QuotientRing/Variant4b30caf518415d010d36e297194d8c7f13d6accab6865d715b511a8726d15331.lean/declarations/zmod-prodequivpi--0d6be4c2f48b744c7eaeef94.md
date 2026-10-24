# ZMod.prodEquivPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c7951e2fb63b2bdf3b0ea3a6e17770b833b4c5e409d5f08499f689e3341c6d0",
  "kind": "def",
  "lexical_name": "ZMod.prodEquivPi",
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
  "slug": "zmod-prodequivpi--0d6be4c2f48b744c7eaeef94",
  "source": {
    "blob": "c0d9298b876fee11a1f828df0326e72241f4329b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 50,
    "path": "GRWTSK/Algebra/QuotientRing/Variant4b30caf518415d010d36e297194d8c7f13d6accab6865d715b511a8726d15331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d6be4c2f48b744c7eaeef9445c1335190f63fe5bc049e2eed5e0ef254162ddb",
  "verification": {
    "reference": "docs/verification/Algebra/QuotientRing/Variant4b30caf518415d010d36e297194d8c7f13d6accab6865d715b511a8726d15331.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c7951e2fb63b2bdf3b0ea3a6e17770b833b4c5e409d5f08499f689e3341c6d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ZMod.prodEquivPi {ι : Type*} [Fintype ι] (a : ι → ℕ)
    (coprime : Pairwise (Nat.Coprime on a)) : ZMod (∏ i, a i) ≃+* Π i, ZMod (a i) :=
  have : Pairwise fun i j => IsCoprime (span {(a i : ℤ)}) (span {(a j : ℤ)}) :=
    fun _i _j h ↦ (isCoprime_span_singleton_iff _ _).mpr ((coprime h).cast (R := ℤ))
  Int.quotientSpanNatEquivZMod _ |>.symm.trans <|
  quotEquivOfEq (iInf_span_singleton_natCast (R := ℤ) coprime) |>.symm.trans <|
  quotientInfRingEquivPiQuotient _ this |>.trans <|
  RingEquiv.piCongrRight fun i ↦ Int.quotientSpanNatEquivZMod (a i)

end ChineseRemainder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/QuotientRing/Variant4b30caf518415d010d36e297194d8c7f13d6accab6865d715b511a8726d15331.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuotientRing/Variant4b30caf518415d010d36e297194d8c7f13d6accab6865d715b511a8726d15331.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0d9298b876fee11a1f828df0326e72241f4329b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
