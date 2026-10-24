# orderIsoNatOfLinearSuccPredArch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31ac9631aa7caac4426bde757e46a5571d4288db7467a194c419e840ae380194",
  "kind": "def",
  "lexical_name": "orderIsoNatOfLinearSuccPredArch",
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
  "slug": "orderisonatoflinearsuccpredarch--0e0adc7eaacef53e03d45768",
  "source": {
    "blob": "be182f01e28e320f42e9e6d25ac8c489c339e5f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 386,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb2ccd77b7e3cc42c822fda93b9d790da22b783a227d8fab8f23c33a7ac5d4e71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e0adc7eaacef53e03d4576857276d238ead4d93fdc79be2e4814db6dbac0171",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb2ccd77b7e3cc42c822fda93b9d790da22b783a227d8fab8f23c33a7ac5d4e71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31ac9631aa7caac4426bde757e46a5571d4288db7467a194c419e840ae380194`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def orderIsoNatOfLinearSuccPredArch [NoMaxOrder ι] [OrderBot ι] : ι ≃o ℕ where
  toFun i := (toZ ⊥ i).toNat
  invFun n := succ^[n] ⊥
  left_inv i := by
    dsimp only
    exact iterate_succ_toZ i bot_le
  right_inv n := by
    dsimp only
    rw [toZ_iterate_succ]
    exact Int.toNat_natCast n
  map_rel_iff' := by
    intro i j
    simp only [Equiv.coe_fn_mk, Int.toNat_le]
    rw [← toZ_le_toZ (i0 := (⊥ : ι)), Int.toNat_of_nonneg (toZ_nonneg bot_le)]

/-- If the order has both a bot and a top, `toZ` gives an `OrderIso` between `ι` and
`Finset.range n` for some `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb2ccd77b7e3cc42c822fda93b9d790da22b783a227d8fab8f23c33a7ac5d4e71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb2ccd77b7e3cc42c822fda93b9d790da22b783a227d8fab8f23c33a7ac5d4e71.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be182f01e28e320f42e9e6d25ac8c489c339e5f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
