# logHeight₁_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:334a7f7b-208f-02d0-f1d6-4d603af15be6",
  "kind": "lemma",
  "lexical_name": "logHeight₁_mul_le",
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
  "slug": "logheight-mul-le--b6607f56ba0ebd39e837be7b",
  "source": {
    "blob": "546a7c78395eb14eb2394b2fc07e9231de189cc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 798,
    "line": 792,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5076457076582238e04d5f31dcf825e87fc2cf9ba1b20284439f49beef18e51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6607f56ba0ebd39e837be7b0175c69da743c9d02847feaeb91c8ac19dec9d7f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5076457076582238e04d5f31dcf825e87fc2cf9ba1b20284439f49beef18e51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:334a7f7b-208f-02d0-f1d6-4d603af15be6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 792–798.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma logHeight₁_mul_le (x y : K) : logHeight₁ (x * y) ≤ logHeight₁ x + logHeight₁ y := by
  simp only [logHeight₁_eq_log_mulHeight₁]
  pull (disch := positivity) log
  exact log_le_log (by positivity) <| mulHeight₁_mul_le ..

/-- The multiplicative height of a product of field elements is bounded above by the product
of their multiplicative heights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5076457076582238e04d5f31dcf825e87fc2cf9ba1b20284439f49beef18e51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5076457076582238e04d5f31dcf825e87fc2cf9ba1b20284439f49beef18e51.lean#L792).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `546a7c78395eb14eb2394b2fc07e9231de189cc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
