# DeclarationReachable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e600f27c3394400a451ada27de91b88944a107a24508eaaf6ff11acbb47cd50",
  "kind": "inductive",
  "lexical_name": "DeclarationReachable",
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
  "slug": "declarationreachable--cd7855213df99560cf8ffad6",
  "source": {
    "blob": "47e2e4acefc804eb14a6a1eb5be13fea09036606",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 53,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kernel/Variant2ab9f9a2799135ce5afdbb1ee6e7d3893dfbc1761f3cbae7cde0068c480abc0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd7855213df99560cf8ffad6a11a23bdf9cab1a70d70b481720f9ad8387d6c38",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kernel/Variant2ab9f9a2799135ce5afdbb1ee6e7d3893dfbc1761f3cbae7cde0068c480abc0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e600f27c3394400a451ada27de91b88944a107a24508eaaf6ff11acbb47cd50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive DeclarationReachable
    (directDependencies : ObjectAddress → List ObjectAddress)
    (root : ObjectAddress) :
    ObjectAddress → Prop
  | root : DeclarationReachable directDependencies root root
  | step
      {parent child : ObjectAddress}
      (parentReachable :
        DeclarationReachable directDependencies root parent)
      (childDirect : child ∈ directDependencies parent) :
      DeclarationReachable directDependencies root child

/-- Exact, proof-bearing transitive dependency cone of one declaration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kernel/Variant2ab9f9a2799135ce5afdbb1ee6e7d3893dfbc1761f3cbae7cde0068c480abc0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kernel/Variant2ab9f9a2799135ce5afdbb1ee6e7d3893dfbc1761f3cbae7cde0068c480abc0b.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47e2e4acefc804eb14a6a1eb5be13fea09036606` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
