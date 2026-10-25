# coeff_iterate_frobeniusEquiv_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac4546542aa387f94c84ef017b60db63f15bcea8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 689,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/377ea326ac6ddbdea37a640c8aa85899a6167ea3341ab037b2c3cbf004ce62b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62ba3db4-d4af-8072-e598-936a2f6dd529",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94cf7f61-bb9b-ad47-48ee-4cdb2ff94033",
  "kind": "theorem",
  "lexical_name": "coeff_iterate_frobeniusEquiv_symm",
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
  "slug": "coeff-iterate-frobeniusequiv-symm--a8e54ec827e64cbc17e8f501",
  "source": {
    "blob": "ac4546542aa387f94c84ef017b60db63f15bcea8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 702,
    "line": 689,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Perfection/Variant377ea326ac6ddbdea37a640c8aa85899a6167ea3341ab037b2c3cbf004ce62b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8e54ec827e64cbc17e8f5013811681805ed14e40bcada0ee8f7259194702a61",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Perfection/Variant377ea326ac6ddbdea37a640c8aa85899a6167ea3341ab037b2c3cbf004ce62b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94cf7f61-bb9b-ad47-48ee-4cdb2ff94033`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 689–702.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_iterate_frobeniusEquiv_symm (m n : ℕ) (x : PreTilt O p) :
    (coeff m (((frobeniusEquiv _ p).symm^[n]) x)) = coeff (m + n) x := by
  simp [PreTilt, coeff]

end coeff

section Classical

open Perfection

open scoped Classical in
/-- The valuation `Perfection(O/(p)) → ℝ≥0` as a function.
Given `f ∈ Perfection(O/(p))`, if `f = 0` then output `0`;
otherwise output `preVal(f(n))^(p^n)` for any `n` such that `f(n) ≠ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Perfection/Variant377ea326ac6ddbdea37a640c8aa85899a6167ea3341ab037b2c3cbf004ce62b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Perfection/Variant377ea326ac6ddbdea37a640c8aa85899a6167ea3341ab037b2c3cbf004ce62b4.lean#L689).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac4546542aa387f94c84ef017b60db63f15bcea8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
