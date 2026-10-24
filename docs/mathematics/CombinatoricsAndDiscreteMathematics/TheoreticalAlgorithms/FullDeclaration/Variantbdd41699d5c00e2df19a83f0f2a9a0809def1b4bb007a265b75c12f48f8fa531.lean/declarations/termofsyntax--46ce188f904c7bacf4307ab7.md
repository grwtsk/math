# termOfSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a2cefe5a50a7ca2202324614080dce1400535a2a4a54d07258931cad4c9c761",
  "kind": "def",
  "lexical_name": "termOfSyntax",
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
  "slug": "termofsyntax--46ce188f904c7bacf4307ab7",
  "source": {
    "blob": "fadc07f6988723ca51c6ec11e9a7f456a916d6af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 192,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FullDeclaration/Variantbdd41699d5c00e2df19a83f0f2a9a0809def1b4bb007a265b75c12f48f8fa531.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46ce188f904c7bacf4307ab71c15b0e492caa3daef578481373801dcb93f615f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FullDeclaration/Variantbdd41699d5c00e2df19a83f0f2a9a0809def1b4bb007a265b75c12f48f8fa531.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a2cefe5a50a7ca2202324614080dce1400535a2a4a54d07258931cad4c9c761`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def termOfSyntax (certificate : SyntaxCertificate) : Term :=
  let terms := certificate.nodes.foldl (fun prior node =>
    let term := match node.children with
      | [] => Term.nullary node.constructor
      | child :: _ => Term.unary node.constructor ((prior[child.value]?).getD default)
    prior ++ [term]) ([] : List Term)
  (terms[certificate.root.value]?).getD default

/-- Whole immutable candidate bundle fixed before higher-stage proofs are issued. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FullDeclaration/Variantbdd41699d5c00e2df19a83f0f2a9a0809def1b4bb007a265b75c12f48f8fa531.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FullDeclaration/Variantbdd41699d5c00e2df19a83f0f2a9a0809def1b4bb007a265b75c12f48f8fa531.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fadc07f6988723ca51c6ec11e9a7f456a916d6af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
