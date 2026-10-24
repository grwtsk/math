# Prefix.Variadic.toStrictPolish

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1021cd2e5437e4db5448654cc8f74646c5c4b9f7d974d5a9528738937c81c63",
  "kind": "def",
  "lexical_name": "Prefix.Variadic.toStrictPolish",
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
  "slug": "prefix-variadic-tostrictpolish--d16331c20d0e76ea6bc4bd75",
  "source": {
    "blob": "fe650f4e3e9f86f99ef1983d68080112b8398705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 66,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cambridge/Variant8086aeccc0c2509077c7568c118cd2d3ca03d6e53be38bc22705e0783ec1606f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d16331c20d0e76ea6bc4bd75d17e42a213e276c6fb6bb86380029f01f7adad15",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cambridge/Variant8086aeccc0c2509077c7568c118cd2d3ca03d6e53be38bc22705e0783ec1606f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1021cd2e5437e4db5448654cc8f74646c5c4b9f7d974d5a9528738937c81c63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Prefix.Variadic.toStrictPolish
    (p : Prefix.Variadic α) :
    List (Prefix.StrictToken α) :=
  FormulaTree.toStrictPolish (Prefix.Variadic.toTree p)

mutual

/--
Flatten associative conjunction and disjunction nodes into Cambridge-style
variadic nodes.

This preserves order but removes unnecessary binary nesting for AND/OR.
Non-commutative and non-associative operators are not flattened.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cambridge/Variant8086aeccc0c2509077c7568c118cd2d3ca03d6e53be38bc22705e0783ec1606f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cambridge/Variant8086aeccc0c2509077c7568c118cd2d3ca03d6e53be38bc22705e0783ec1606f.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe650f4e3e9f86f99ef1983d68080112b8398705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
