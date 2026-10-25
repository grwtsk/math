# orderTop_embDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27f41914-c181-47e6-4809-94b129a5cc7b",
  "kind": "theorem",
  "lexical_name": "orderTop_embDomain",
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
  "slug": "ordertop-embdomain--b8c52d40d5848f4c07f9f21e",
  "source": {
    "blob": "9dbce948c0f6f66cc8d29bef2c916a4755f4cc87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 511,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant21074977dd021f0358068aae5ffe69c51ca0db9a9222df536ba735a607137bc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8c52d40d5848f4c07f9f21e2f8eb2aa31086b7064e22046bdd1304bba4fcfa2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant21074977dd021f0358068aae5ffe69c51ca0db9a9222df536ba735a607137bc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27f41914-c181-47e6-4809-94b129a5cc7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderTop_embDomain {Γ : Type*} [LinearOrder Γ] {f : Γ ↪o Γ'} {x : R⟦Γ⟧} :
    (embDomain f x).orderTop = WithTop.map f x.orderTop := by
  obtain rfl | hx := eq_or_ne x 0
  · simp
  rw [← WithTop.coe_untop x.orderTop (by simpa using hx), WithTop.map_coe]
  apply orderTop_eq_of_le
  · simpa using coeff_orderTop_ne (by simp)
  intro y hy
  obtain ⟨z, hz, rfl⟩ :=
    (Set.mem_image _ _ _).mp <| Set.mem_of_subset_of_mem support_embDomain_subset hy
  rw [OrderEmbedding.le_iff_le, WithTop.untop_le_iff]
  apply orderTop_le_of_coeff_ne_zero
  simpa using hz

end Domain

end Zero

section LinearOrder

variable [Zero R] [LinearOrder Γ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant21074977dd021f0358068aae5ffe69c51ca0db9a9222df536ba735a607137bc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant21074977dd021f0358068aae5ffe69c51ca0db9a9222df536ba735a607137bc5.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dbce948c0f6f66cc8d29bef2c916a4755f4cc87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
