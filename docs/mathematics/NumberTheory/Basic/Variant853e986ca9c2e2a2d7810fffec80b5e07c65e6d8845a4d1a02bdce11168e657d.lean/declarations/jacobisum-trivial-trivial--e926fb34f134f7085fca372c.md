# jacobiSum_trivial_trivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef06d0c3-c1f9-690a-1f34-3223e66a6bc8",
  "kind": "theorem",
  "lexical_name": "jacobiSum_trivial_trivial",
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
  "slug": "jacobisum-trivial-trivial--e926fb34f134f7085fca372c",
  "source": {
    "blob": "6e1af8b061b9d202ffe79e2881e13e2e895548a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 111,
    "path": "GRWTSK/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e926fb34f134f7085fca372cd517c2968935e53bf985475ddeaed8b9b37ae70d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef06d0c3-c1f9-690a-1f34-3223e66a6bc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobiSum_trivial_trivial :
    jacobiSum (MulChar.trivial F R) (MulChar.trivial F R) = Fintype.card F - 2 := by
  classical
  rw [jacobiSum_eq_sum_sdiff]
  have : ∀ x ∈ univ \ {0, 1}, (MulChar.trivial F R) x * (MulChar.trivial F R) (1 - x) = 1 := by
    intro x hx
    rw [← map_mul, MulChar.trivial_apply, ite_eq_left]
    simp only [mem_sdiff, mem_univ, mem_insert, mem_singleton, not_or, ← ne_eq, true_and] at hx
    simpa only [isUnit_iff_ne_zero, mul_ne_zero_iff, ne_eq, sub_eq_zero, @eq_comm _ _ x] using hx
  calc ∑ x ∈ univ \ {0, 1}, (MulChar.trivial F R) x * (MulChar.trivial F R) (1 - x)
  _ = ∑ _ ∈ univ \ {0, 1}, 1 := sum_congr rfl this
  _ = #(univ \ {0, 1}) := (cast_card _).symm
  _ = Fintype.card F - 2 := by
    rw [card_sdiff_of_subset (subset_univ _), card_univ, card_pair zero_ne_one,
      Nat.cast_sub <| Nat.add_one_le_of_lt Fintype.one_lt_card, Nat.cast_two]

/-- If `1` is the trivial multiplicative character on a finite field `F`, then `J(1,1) = #F-2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e1af8b061b9d202ffe79e2881e13e2e895548a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
