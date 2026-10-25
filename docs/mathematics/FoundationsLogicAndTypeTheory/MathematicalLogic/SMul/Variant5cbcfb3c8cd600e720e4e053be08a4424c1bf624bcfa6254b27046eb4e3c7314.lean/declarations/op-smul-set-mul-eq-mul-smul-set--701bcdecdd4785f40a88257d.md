# op_smul_set_mul_eq_mul_smul_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5b88efd-40b0-f85c-4056-7b24dc31107e",
  "kind": "theorem",
  "lexical_name": "op_smul_set_mul_eq_mul_smul_set",
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
  "slug": "op-smul-set-mul-eq-mul-smul-set--701bcdecdd4785f40a88257d",
  "source": {
    "blob": "be5a6b2608f02acf560391daeed01ab866df6b5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 875,
    "line": 863,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant5cbcfb3c8cd600e720e4e053be08a4424c1bf624bcfa6254b27046eb4e3c7314.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:701bcdecdd4785f40a88257dc2f99ddb0d5b89b8b8815c6cdbfb33151705afbf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant5cbcfb3c8cd600e720e4e053be08a4424c1bf624bcfa6254b27046eb4e3c7314.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5b88efd-40b0-f85c-4056-7b24dc31107e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 863–875.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem op_smul_set_mul_eq_mul_smul_set (a : α) (s : Set α) (t : Set α) :
    op a • s * t = s * a • t :=
  op_smul_set_smul_eq_smul_smul_set _ _ _ fun _ _ _ => mul_assoc _ _ _
#align set.op_smul_set_mul_eq_mul_smul_set Set.op_smul_set_mul_eq_mul_smul_set
#align set.op_vadd_set_add_eq_add_vadd_set Set.op_vadd_set_add_eq_add_vadd_set

end Semigroup

section LeftCancelSemigroup

variable [LeftCancelSemigroup α] {s t : Set α}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant5cbcfb3c8cd600e720e4e053be08a4424c1bf624bcfa6254b27046eb4e3c7314.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant5cbcfb3c8cd600e720e4e053be08a4424c1bf624bcfa6254b27046eb4e3c7314.lean#L863).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be5a6b2608f02acf560391daeed01ab866df6b5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
