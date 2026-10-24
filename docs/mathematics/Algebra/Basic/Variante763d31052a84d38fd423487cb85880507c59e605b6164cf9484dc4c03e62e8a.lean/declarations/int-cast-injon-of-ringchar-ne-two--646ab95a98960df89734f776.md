# Int.cast_injOn_of_ringChar_ne_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72b3ec682c56d747a0194d7e5f478cca49ff91c4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa931fd6-343b-e384-653b-aa10d49d5d2c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42ec63ab-f0bc-e5e1-306e-2521afa10d61",
  "kind": "lemma",
  "lexical_name": "Int.cast_injOn_of_ringChar_ne_two",
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
  "slug": "int-cast-injon-of-ringchar-ne-two--646ab95a98960df89734f776",
  "source": {
    "blob": "72b3ec682c56d747a0194d7e5f478cca49ff91c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 164,
    "path": "GRWTSK/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:646ab95a98960df89734f776a89f82d3007822e4503f28b42869b91eb0b8fc42",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42ec63ab-f0bc-e5e1-306e-2521afa10d61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Int.cast_injOn_of_ringChar_ne_two {R : Type*} [NonAssocRing R] [Nontrivial R]
    (hR : ringChar R ≠ 2) : ({0, 1, -1} : Set ℤ).InjOn ((↑) : ℤ → R) := by
  rintro _ (rfl | rfl | rfl) _ (rfl | rfl | rfl) h <;>
  simp only
    [cast_neg, cast_one, cast_zero, neg_eq_zero, one_ne_zero, zero_ne_one, zero_eq_neg] at h ⊢
  · exact ((Ring.neg_one_ne_one_of_char_ne_two hR).symm h).elim
  · exact ((Ring.neg_one_ne_one_of_char_ne_two hR) h).elim

end

namespace CharZero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante763d31052a84d38fd423487cb85880507c59e605b6164cf9484dc4c03e62e8a.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72b3ec682c56d747a0194d7e5f478cca49ff91c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
