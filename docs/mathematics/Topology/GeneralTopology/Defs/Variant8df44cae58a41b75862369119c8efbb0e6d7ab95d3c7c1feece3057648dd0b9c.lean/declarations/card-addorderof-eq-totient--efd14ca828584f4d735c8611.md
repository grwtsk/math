# card_addOrderOf_eq_totient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a7d3b9c4dc749eee9d0f030f3aac40c06e87b8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 689,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8df44cae58a41b75862369119c8efbb0e6d7ab95d3c7c1feece3057648dd0b9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1351d2b-588e-21a4-46f7-54e4e957e0d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4bb5b4ca-4bca-8151-0026-1ec3754b8178",
  "kind": "theorem",
  "lexical_name": "card_addOrderOf_eq_totient",
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
  "slug": "card-addorderof-eq-totient--efd14ca828584f4d735c8611",
  "source": {
    "blob": "5a7d3b9c4dc749eee9d0f030f3aac40c06e87b8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 723,
    "line": 689,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant8df44cae58a41b75862369119c8efbb0e6d7ab95d3c7c1feece3057648dd0b9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efd14ca828584f4d735c861181b8a726d5d4230d47131a55cba4f16b83139f5d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant8df44cae58a41b75862369119c8efbb0e6d7ab95d3c7c1feece3057648dd0b9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bb5b4ca-4bca-8151-0026-1ec3754b8178`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 689–723.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_addOrderOf_eq_totient {n : ℕ} :
    Nat.card { u : AddCircle p // addOrderOf u = n } = n.totient := by
  rcases n.eq_zero_or_pos with (rfl | hn)
  · simp only [Nat.totient_zero, addOrderOf_eq_zero_iff]
    rcases em (∃ u : AddCircle p, ¬IsOfFinAddOrder u) with (⟨u, hu⟩ | h)
    · have : Infinite { u : AddCircle p // ¬IsOfFinAddOrder u } := by
        rw [← coe_ofPred, infinite_coe_iff]
        exact infinite_not_isOfFinAddOrder hu
      exact Nat.card_eq_zero_of_infinite
    · have : IsEmpty { u : AddCircle p // ¬IsOfFinAddOrder u } := by simpa [isEmpty_subtype] using h
      exact Nat.card_of_isEmpty
  · rw [← coe_ofPred, Nat.card_congr (setAddOrderOfEquiv p hn),
      n.totient_eq_card_lt_and_coprime]
    simp only [Nat.gcd_comm]

end FiniteOrderPoints

end LinearOrderedField

end AddCircle

section IdentifyIccEnds

/-! This section proves that for any `a`, the natural map from `[a, a + p] ⊂ 𝕜` to `AddCircle p`
gives an identification of `AddCircle p`, as a topological space, with the quotient of `[a, a + p]`
by the equivalence relation identifying the endpoints. -/

namespace AddCircle

variable [AddCommGroup 𝕜] [LinearOrder 𝕜] [IsOrderedAddMonoid 𝕜] (p a : 𝕜)
  [hp : Fact (0 < p)]

local notation "𝕋" => AddCircle p

/-- The relation identifying the endpoints of `Icc a (a + p)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant8df44cae58a41b75862369119c8efbb0e6d7ab95d3c7c1feece3057648dd0b9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant8df44cae58a41b75862369119c8efbb0e6d7ab95d3c7c1feece3057648dd0b9c.lean#L689).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a7d3b9c4dc749eee9d0f030f3aac40c06e87b8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
