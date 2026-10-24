# IntermediateField.isAlgebraic_adjoin_iff_isAlgebraic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e0e3eb613feaa25cce09f3a7685ee70a1daaa38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a36ee495-5090-0bee-b67e-4b74533c27e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bec1aa4a-e105-9781-452f-cf2d7f7ca49e",
  "kind": "theorem",
  "lexical_name": "IntermediateField.isAlgebraic_adjoin_iff_isAlgebraic",
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
  "slug": "intermediatefield-isalgebraic-adjoin-iff-isalgebraic--baee1d0871ec4bc735bc2dd8",
  "source": {
    "blob": "5e0e3eb613feaa25cce09f3a7685ee70a1daaa38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 174,
    "path": "GRWTSK/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baee1d0871ec4bc735bc2dd8423ce9f9bacb49f7f23ac37b891ac91da7e2684c",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bec1aa4a-e105-9781-452f-cf2d7f7ca49e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IntermediateField.isAlgebraic_adjoin_iff_isAlgebraic {S : Set E} :
    Algebra.IsAlgebraic F (adjoin F S) ↔ ∀ x ∈ S, IsAlgebraic F x :=
  ((le_algebraicClosure_iff F E _).symm.trans (adjoin_le_iff.trans <| forall_congr' <|
    fun _ => Iff.imp Iff.rfl mem_algebraicClosure_iff))

namespace algebraicClosure

/-- If `E` is algebraically closed, then the algebraic closure of `F` in `E` is an absolute
algebraic closure of `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraicClosure/Variant122d89453a0f4843a499811dd5a244a110224efc980b0cf25883e8f9ec738a5c.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e0e3eb613feaa25cce09f3a7685ee70a1daaa38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
