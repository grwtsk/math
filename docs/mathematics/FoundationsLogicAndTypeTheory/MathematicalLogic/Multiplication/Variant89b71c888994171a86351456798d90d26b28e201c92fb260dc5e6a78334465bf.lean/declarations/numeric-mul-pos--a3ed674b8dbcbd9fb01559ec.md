# Numeric.mul_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34dec25f964853a34aa6a75b2e028953923aded2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 493,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89b71c888994171a86351456798d90d26b28e201c92fb260dc5e6a78334465bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01be0737-9fdd-3fca-7e70-6672f141db42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12fc285f-779c-e6c2-2f12-f4cf78f33cc6",
  "kind": "theorem",
  "lexical_name": "Numeric.mul_pos",
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
  "slug": "numeric-mul-pos--a3ed674b8dbcbd9fb01559ec",
  "source": {
    "blob": "34dec25f964853a34aa6a75b2e028953923aded2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 493,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiplication/Variant89b71c888994171a86351456798d90d26b28e201c92fb260dc5e6a78334465bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3ed674b8dbcbd9fb01559eca798cb22e5029868ee8b866110a19700b42c8498",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiplication/Variant89b71c888994171a86351456798d90d26b28e201c92fb260dc5e6a78334465bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12fc285f-779c-e6c2-2f12-f4cf78f33cc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Numeric.mul_pos (hx₁ : x₁.Numeric) (hx₂ : x₂.Numeric) (hp₁ : 0 < x₁) (hp₂ : 0 < x₂) :
    0 < x₁ * x₂ := by
  rw [lt_iff_game_lt]
  have := P3_of_lt_of_lt numeric_zero hx₁ numeric_zero hx₂ hp₁ hp₂
  simp_rw [P3, quot_zero_mul, quot_mul_zero, add_lt_add_iff_left] at this
  exact this

end SetTheory.PGame

namespace Surreal

open SetTheory.PGame.Equiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiplication/Variant89b71c888994171a86351456798d90d26b28e201c92fb260dc5e6a78334465bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiplication/Variant89b71c888994171a86351456798d90d26b28e201c92fb260dc5e6a78334465bf.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34dec25f964853a34aa6a75b2e028953923aded2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
