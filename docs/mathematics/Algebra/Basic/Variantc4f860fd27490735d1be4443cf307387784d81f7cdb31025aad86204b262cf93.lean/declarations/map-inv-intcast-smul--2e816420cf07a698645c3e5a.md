# map_inv_intCast_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0579f1c0-6aaf-959b-bc7d-301d5a3ffbc6",
  "kind": "theorem",
  "lexical_name": "map_inv_intCast_smul",
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
  "slug": "map-inv-intcast-smul--2e816420cf07a698645c3e5a",
  "source": {
    "blob": "7faa2e10828ffb01a6b936bac2acb0c31e51e9e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 63,
    "path": "GRWTSK/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e816420cf07a698645c3e5aac42584ee288f392d0201affa8c50af20ca1a0f0",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0579f1c0-6aaf-959b-bc7d-301d5a3ffbc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_inv_intCast_smul [AddCommGroup M] [AddCommGroup M₂] {F : Type*} [FunLike F M M₂]
    [AddMonoidHomClass F M M₂] (f : F) (R S : Type*) [DivisionRing R] [DivisionRing S] [Module R M]
    [Module S M₂] (z : ℤ) (x : M) : f ((z⁻¹ : R) • x) = (z⁻¹ : S) • f x := by
  obtain ⟨n, rfl | rfl⟩ := z.eq_nat_or_neg
  · rw [Int.cast_natCast, Int.cast_natCast, map_inv_natCast_smul _ R S]
  · simp_rw [Int.cast_neg, Int.cast_natCast, inv_neg, neg_smul, map_neg,
      map_inv_natCast_smul _ R S]

/-- If `E` is a vector space over two division semirings `R` and `S`, then scalar multiplications
agree on inverses of natural numbers in `R` and `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc4f860fd27490735d1be4443cf307387784d81f7cdb31025aad86204b262cf93.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7faa2e10828ffb01a6b936bac2acb0c31e51e9e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
