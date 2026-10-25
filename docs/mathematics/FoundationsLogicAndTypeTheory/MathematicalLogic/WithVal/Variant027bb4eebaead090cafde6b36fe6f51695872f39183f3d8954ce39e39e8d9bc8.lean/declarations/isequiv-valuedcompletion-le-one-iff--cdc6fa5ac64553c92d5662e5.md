# IsEquiv.valuedCompletion_le_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c24c97a27cc51165e8ced0e7be9ba365dc7e170",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 624,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/027bb4eebaead090cafde6b36fe6f51695872f39183f3d8954ce39e39e8d9bc8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfe874b3-6b8c-f53c-8b03-2ffc3279db86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb2623c4-1e13-bd1d-0548-cff78b82db84",
  "kind": "theorem",
  "lexical_name": "IsEquiv.valuedCompletion_le_one_iff",
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
  "slug": "isequiv-valuedcompletion-le-one-iff--cdc6fa5ac64553c92d5662e5",
  "source": {
    "blob": "7c24c97a27cc51165e8ced0e7be9ba365dc7e170",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 624,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithVal/Variant027bb4eebaead090cafde6b36fe6f51695872f39183f3d8954ce39e39e8d9bc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdc6fa5ac64553c92d5662e5b78b7119365c58cca324dfb6f717aa75735e7b8f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WithVal/Variant027bb4eebaead090cafde6b36fe6f51695872f39183f3d8954ce39e39e8d9bc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb2623c4-1e13-bd1d-0548-cff78b82db84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 624–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsEquiv.valuedCompletion_le_one_iff {K : Type*} [Field K] {v : Valuation K Γ₀}
    {w : Valuation K Γ₀'} (h : v.IsEquiv w) {x : v.Completion} :
    Valued.v x ≤ 1 ↔ Valued.v (mapEquiv h.uniformEquiv x) ≤ 1 := by
  induction x using induction_on with
  | hp =>
    have h1 (x : UniformSpace.Completion (WithVal v)) :
      Valued.v x ≤ 1 ↔ Valued.v.restrict x ≤ 1 := by rw [restrict_le_one_iff]
    simp_rw [h1]
    convert!
      (mapEquiv h.uniformEquiv).toHomeomorph.isClosed_setOfPred_iff
        (Valued.isClopen_closedBall _ one_ne_zero) (Valued.isClopen_closedBall _ one_ne_zero)
    rw [restrict_le_one_iff]
    rfl
  | ih a =>
    simpa [Valued.valuedCompletion_apply] using! h.le_one_iff_le_one

end Equivalence

end Valuation

namespace NumberField.RingOfIntegers

variable {K : Type*} [Field K] [NumberField K] (v : Valuation K Γ₀)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WithVal/Variant027bb4eebaead090cafde6b36fe6f51695872f39183f3d8954ce39e39e8d9bc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithVal/Variant027bb4eebaead090cafde6b36fe6f51695872f39183f3d8954ce39e39e8d9bc8.lean#L624).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c24c97a27cc51165e8ced0e7be9ba365dc7e170` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
