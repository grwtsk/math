# FormulaTree.toPrefix.Variadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fdbcf81ea53ad0dadaf09c4867e663b1515bf84a768872c51d491f94b28fc67",
  "kind": "def",
  "lexical_name": "FormulaTree.toPrefix.Variadic",
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
  "slug": "formulatree-toprefix-variadic--f75d7866200c3b69baca4309",
  "source": {
    "blob": "c11ccf80de43ac9589f1fa611f6a5b83f7d82c56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 72,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cambridge/Variant33737acebed7d0cf8051902e97cc2ccede744a9d4ad8a378ab9c2a7c09a3f9c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f75d7866200c3b69baca4309ad527692fdb2a63834107ac01131815624efb37b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cambridge/Variant33737acebed7d0cf8051902e97cc2ccede744a9d4ad8a378ab9c2a7c09a3f9c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7fdbcf81ea53ad0dadaf09c4867e663b1515bf84a768872c51d491f94b28fc67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FormulaTree.toPrefix.Variadic : FormulaTree α → Prefix.Variadic α
  | .var a => .atom a
  | .falsum => .zero
  | .truth => .one
  | .neg p => .not (FormulaTree.toPrefix.Variadic p)
  | .conj p q =>
      .all (FormulaTree.toCambridgeConjArgs p ++ FormulaTree.toCambridgeConjArgs q)
  | .disj p q =>
      .any (FormulaTree.toCambridgeDisjArgs p ++ FormulaTree.toCambridgeDisjArgs q)
  | .impl p q =>
      .impl (FormulaTree.toPrefix.Variadic p) (FormulaTree.toPrefix.Variadic q)
  | .eqv p q =>
      .eqv (FormulaTree.toPrefix.Variadic p) (FormulaTree.toPrefix.Variadic q)
  | .nand p q =>
      .nand (FormulaTree.toPrefix.Variadic p) (FormulaTree.toPrefix.Variadic q)

/-- Collect flattened conjunction arguments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cambridge/Variant33737acebed7d0cf8051902e97cc2ccede744a9d4ad8a378ab9c2a7c09a3f9c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cambridge/Variant33737acebed7d0cf8051902e97cc2ccede744a9d4ad8a378ab9c2a7c09a3f9c2.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c11ccf80de43ac9589f1fa611f6a5b83f7d82c56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
