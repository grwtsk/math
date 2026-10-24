# affineTransition_mixedDifference_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec27c5a536870682d284f911d5aa3d0cae31d554",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb4d7c753ffb17e3a015bd8822435f7afe5001c03f7d0b05f99a6b0914121fdd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae239219-ca16-19ef-6370-ec55ed5c011b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b07d5665-f7db-173f-32a2-b29caad06003",
  "kind": "theorem",
  "lexical_name": "affineTransition_mixedDifference_zero",
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
  "slug": "affinetransition-mixeddifference-zero--e75dc789b94d681db9eaa552",
  "source": {
    "blob": "ec27c5a536870682d284f911d5aa3d0cae31d554",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 23,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NegativeChecks/Varianteb4d7c753ffb17e3a015bd8822435f7afe5001c03f7d0b05f99a6b0914121fdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e75dc789b94d681db9eaa5522aa86915f9b31ea9a623b5d3b26150f3f5438558",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NegativeChecks/Varianteb4d7c753ffb17e3a015bd8822435f7afe5001c03f7d0b05f99a6b0914121fdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b07d5665-f7db-173f-32a2-b29caad06003`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineTransition_mixedDifference_zero
    (a b c state₁ state₀ residual₁ residual₀ : ℝ) :
    (a * state₁ + b * residual₁ + c) -
        (a * state₁ + b * residual₀ + c) -
        (a * state₀ + b * residual₁ + c) +
        (a * state₀ + b * residual₀ + c) = 0 := by
  ring

/-- Two steps of an affine recurrence are still jointly affine.  Merely adding
time depth cannot supply the nonzero mixed difference required by PRD-04. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NegativeChecks/Varianteb4d7c753ffb17e3a015bd8822435f7afe5001c03f7d0b05f99a6b0914121fdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NegativeChecks/Varianteb4d7c753ffb17e3a015bd8822435f7afe5001c03f7d0b05f99a6b0914121fdd.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec27c5a536870682d284f911d5aa3d0cae31d554` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
