# mem_inventory_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17c977a2-e94b-6002-b040-19b56471a093",
  "kind": "theorem",
  "lexical_name": "mem_inventory_iff",
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
  "slug": "mem-inventory-iff--dea3970f574d873b9ea46d36",
  "source": {
    "blob": "8f46e265ea702b7f5716357978091746df246f2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 19,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dea3970f574d873b9ea46d360f42aff88226bc736ecf4b430d2d72f3798002e4",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17c977a2-e94b-6002-b040-19b56471a093`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_inventory_iff (N p k : ℕ) :
    (p,k) ∈ properExponentInventory N ↔ p.Prime ∧ 2 ≤ k ∧ p^k ≤ N := by
  constructor
  · intro h
    obtain ⟨hprod,hupper⟩ := mem_filter.mp h
    obtain ⟨hpI,hkI⟩ := mem_product.mp hprod
    exact ⟨(mem_filter.mp hpI).2,(mem_Icc.mp hkI).1,hupper⟩
  · rintro ⟨hp,hk,hupper⟩
    have hpN : p ≤ N := by
      have hpk : p ≤ p^k := by
        conv_lhs => rw [← pow_one p]
        exact Nat.pow_le_pow_right hp.one_lt.le (by omega)
      exact hpk.trans hupper
    have hkN : k ≤ N := (Nat.lt_pow_self hp.one_lt).le.trans hupper
    exact mem_filter.mpr ⟨mem_product.mpr
      ⟨mem_filter.mpr ⟨mem_Ioc.mpr ⟨hp.pos,hpN⟩,hp⟩,mem_Icc.mpr ⟨hk,hkN⟩⟩,hupper⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f46e265ea702b7f5716357978091746df246f2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
