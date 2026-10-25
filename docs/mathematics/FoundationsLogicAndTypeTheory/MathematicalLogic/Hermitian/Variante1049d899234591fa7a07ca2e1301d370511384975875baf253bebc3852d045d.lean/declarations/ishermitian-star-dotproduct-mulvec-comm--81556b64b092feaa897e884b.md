# IsHermitian.star_dotProduct_mulVec_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f731d5d3ec8ac4ac509d6d4e91c5801649a53c89",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 308,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1049d899234591fa7a07ca2e1301d370511384975875baf253bebc3852d045d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b160ca9-54b3-ce0d-bad1-7d551cf3f0d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:20ea798a-019a-91e2-519c-8c5fb9fe9f25",
  "kind": "lemma",
  "lexical_name": "IsHermitian.star_dotProduct_mulVec_comm",
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
  "slug": "ishermitian-star-dotproduct-mulvec-comm--81556b64b092feaa897e884b",
  "source": {
    "blob": "f731d5d3ec8ac4ac509d6d4e91c5801649a53c89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 308,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hermitian/Variante1049d899234591fa7a07ca2e1301d370511384975875baf253bebc3852d045d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81556b64b092feaa897e884bb20a925efdc03d54d8458f96bf05e3becc363c60",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Hermitian/Variante1049d899234591fa7a07ca2e1301d370511384975875baf253bebc3852d045d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20ea798a-019a-91e2-519c-8c5fb9fe9f25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsHermitian.star_dotProduct_mulVec_comm [Fintype n] {A : Matrix n n α}
    (hA : A.IsHermitian) (x y : n → α) :
    star (star x ⬝ᵥ A *ᵥ y) = star y ⬝ᵥ A *ᵥ x := by
  rw [star_dotProduct, star_star, star_mulVec, hA.eq, ← dotProduct_mulVec]

end NonUnitalSemiring

section NonAssocSemiring

variable [NonAssocSemiring α] [StarRing α]

/-- Note this is more general for matrices than `isSelfAdjoint_one` as it does not
require `Fintype n`, which is necessary for `Monoid (Matrix n n R)`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Hermitian/Variante1049d899234591fa7a07ca2e1301d370511384975875baf253bebc3852d045d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hermitian/Variante1049d899234591fa7a07ca2e1301d370511384975875baf253bebc3852d045d.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f731d5d3ec8ac4ac509d6d4e91c5801649a53c89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
