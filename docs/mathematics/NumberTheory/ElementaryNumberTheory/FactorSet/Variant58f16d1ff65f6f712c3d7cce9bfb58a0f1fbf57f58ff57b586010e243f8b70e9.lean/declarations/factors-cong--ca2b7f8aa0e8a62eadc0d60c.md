# factors'_cong

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71179071-fb29-0f19-2287-5e95bfb97f70",
  "kind": "theorem",
  "lexical_name": "factors'_cong",
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
  "slug": "factors-cong--ca2b7f8aa0e8a62eadc0d60c",
  "source": {
    "blob": "5a632ba834bc4615833f952e11e8745f1bcc9bb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 205,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FactorSet/Variant58f16d1ff65f6f712c3d7cce9bfb58a0f1fbf57f58ff57b586010e243f8b70e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca2b7f8aa0e8a62eadc0d60cc922357a3ee67940ac2a1ef1891f0e040f70dab7",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FactorSet/Variant58f16d1ff65f6f712c3d7cce9bfb58a0f1fbf57f58ff57b586010e243f8b70e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71179071-fb29-0f19-2287-5e95bfb97f70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factors'_cong {a b : α} (h : a ~ᵤ b) : factors' a = factors' b := by
  obtain rfl | hb := eq_or_ne b 0
  · rw [associated_zero_iff_eq_zero] at h
    rw [h]
  have ha : a ≠ 0 := by
    contrapose hb with ha
    rw [← associated_zero_iff_eq_zero, ← ha]
    exact h.symm
  rw [← Multiset.map_eq_map Subtype.coe_injective, map_subtype_coe_factors',
    map_subtype_coe_factors', ← rel_associated_iff_map_eq_map]
  exact
    factors_unique irreducible_of_factor irreducible_of_factor
      ((factors_prod ha).trans <| h.trans <| (factors_prod hb).symm)

/-- This returns the multiset of irreducible factors of an associate as a `FactorSet`,
  a multiset of irreducible associates `WithTop`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FactorSet/Variant58f16d1ff65f6f712c3d7cce9bfb58a0f1fbf57f58ff57b586010e243f8b70e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FactorSet/Variant58f16d1ff65f6f712c3d7cce9bfb58a0f1fbf57f58ff57b586010e243f8b70e9.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a632ba834bc4615833f952e11e8745f1bcc9bb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
