# eq_zero_or_eq_zero_of_mul_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4d3ea01-f8ea-7d9d-cf38-ac713b5fe5b8",
  "kind": "theorem",
  "lexical_name": "eq_zero_or_eq_zero_of_mul_eq_zero",
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
  "slug": "eq-zero-or-eq-zero-of-mul-eq-zero--fb4747340fd20fd9659dec99",
  "source": {
    "blob": "360e42955f8a2252ba59d896c03ed274080ba0f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 199,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CanonicallyOrderedCommSemiringTwoMul/Variant54523025d1f04f61d78f3b486a8dd733d7d530fc5f94518df3389aa5522ecacc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb4747340fd20fd9659dec9943df60801e1956a0c93ae960be228db7c99b9cba",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CanonicallyOrderedCommSemiringTwoMul/Variant54523025d1f04f61d78f3b486a8dd733d7d530fc5f94518df3389aa5522ecacc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4d3ea01-f8ea-7d9d-cf38-ac713b5fe5b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_or_eq_zero_of_mul_eq_zero : ∀ a b : L, a * b = 0 → a = 0 ∨ b = 0 := by
  rintro ⟨⟨a, a2⟩, ha⟩ ⟨⟨b, b2⟩, hb⟩ ab1
  injection ab1 with ab
  injection ab with abn ab2
  rw [mul_eq_zero] at abn
  rcases abn with (⟨rfl, rfl⟩ | ⟨rfl, rfl⟩)
  · refine Or.inl ?_
    rcases mem_zmod_2 a2 with (rfl | rfl)
    · rfl
    · exact (ha rfl).elim
  · refine Or.inr ?_
    rcases mem_zmod_2 b2 with (rfl | rfl)
    · rfl
    · exact (hb rfl).elim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CanonicallyOrderedCommSemiringTwoMul/Variant54523025d1f04f61d78f3b486a8dd733d7d530fc5f94518df3389aa5522ecacc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CanonicallyOrderedCommSemiringTwoMul/Variant54523025d1f04f61d78f3b486a8dd733d7d530fc5f94518df3389aa5522ecacc.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `360e42955f8a2252ba59d896c03ed274080ba0f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
