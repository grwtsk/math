# ConditionallyCompleteLinearOrderedField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22a5a3ed77905291274a92ebdf589f8ece3623c9a6de86080b915c3db9a7fc77",
  "kind": "class",
  "lexical_name": "ConditionallyCompleteLinearOrderedField",
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
  "slug": "conditionallycompletelinearorderedfield--83400d21c2369ff9d8fd6824",
  "source": {
    "blob": "ff2687cdb9f15e0c21e0d713c2e81e0ccbf5c027",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 55,
    "path": "GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83400d21c2369ff9d8fd682436f5f212b84feed1349d40f25444daaf04da95a9",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22a5a3ed77905291274a92ebdf589f8ece3623c9a6de86080b915c3db9a7fc77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ConditionallyCompleteLinearOrderedField (α : Type*) extends
    Field α, ConditionallyCompleteLinearOrder α where
  -- extends `IsStrictOrderedRing α` produces
  -- (kernel) declaration has free variables
  -- 'ConditionallyCompleteLinearOrderedField.toIsStrictOrderedRing'
  [toIsStrictOrderedRing : IsStrictOrderedRing α]

attribute [instance] ConditionallyCompleteLinearOrderedField.toIsStrictOrderedRing

-- see Note [lower instance priority]
/-- Any conditionally complete linearly ordered field is archimedean. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff2687cdb9f15e0c21e0d713c2e81e0ccbf5c027` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
