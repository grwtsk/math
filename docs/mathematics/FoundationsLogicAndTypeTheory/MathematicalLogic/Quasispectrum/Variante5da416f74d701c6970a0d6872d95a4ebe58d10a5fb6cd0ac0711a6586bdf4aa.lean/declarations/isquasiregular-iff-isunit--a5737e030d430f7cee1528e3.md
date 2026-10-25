# isQuasiregular_iff_isUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1b273bbf8cfa7d1e182fa2f861877a5452b05dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5da416f74d701c6970a0d6872d95a4ebe58d10a5fb6cd0ac0711a6586bdf4aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d4c2357-e6ce-be63-84e2-7ccb8f6a79a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f961454-2b68-d1d2-5ecd-2579fd5688af",
  "kind": "lemma",
  "lexical_name": "isQuasiregular_iff_isUnit",
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
  "slug": "isquasiregular-iff-isunit--a5737e030d430f7cee1528e3",
  "source": {
    "blob": "c1b273bbf8cfa7d1e182fa2f861877a5452b05dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 222,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variante5da416f74d701c6970a0d6872d95a4ebe58d10a5fb6cd0ac0711a6586bdf4aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5737e030d430f7cee1528e386a83629f5c858227a5c7f56925e17861b67d33b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variante5da416f74d701c6970a0d6872d95a4ebe58d10a5fb6cd0ac0711a6586bdf4aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f961454-2b68-d1d2-5ecd-2579fd5688af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isQuasiregular_iff_isUnit {R : Type*} [Ring R] {x : R} :
    IsQuasiregular x ↔ IsUnit (1 + x) := by
  refine ⟨IsQuasiregular.isUnit_one_add, fun hx ↦ ?_⟩
  rw [isQuasiregular_iff]
  use hx.unit⁻¹ - 1
  constructor
  case' h.left => have := congr($(hx.mul_val_inv) - 1)
  case' h.right => have := congr($(hx.val_inv_mul) - 1)
  all_goals
    rw [← sub_add_cancel (↑hx.unit⁻¹ : R) 1, sub_self] at this
    convert this
    noncomm_ring

-- interestingly, this holds even in the semiring case.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variante5da416f74d701c6970a0d6872d95a4ebe58d10a5fb6cd0ac0711a6586bdf4aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variante5da416f74d701c6970a0d6872d95a4ebe58d10a5fb6cd0ac0711a6586bdf4aa.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1b273bbf8cfa7d1e182fa2f861877a5452b05dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
