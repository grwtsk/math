# abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdbec1ee57fb566d9ae7dcd8dd9244a53f7d96deef0e5845e22ffacd63b54a23",
  "kind": "def",
  "lexical_name": "abs",
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
  "slug": "abs--73877dd0bc61f7bbcef5f26b",
  "source": {
    "blob": "8efbaf57627bf15fa0ecf9ba830d569cfe990eeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 61,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73877dd0bc61f7bbcef5f26b247e25b46465bbe4460337a8c947bf36783b6eb4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bdbec1ee57fb566d9ae7dcd8dd9244a53f7d96deef0e5845e22ffacd63b54a23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def abs ⦃α⦄ : (Sigma.P F).Obj α → Sigma F α
  | ⟨a, f⟩ => ⟨a.1, MvQPF.abs ⟨a.2, f⟩⟩
#align mvqpf.sigma.abs MvQPF.Sigma.abs

/-- representation function for dependent sums -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8efbaf57627bf15fa0ecf9ba830d569cfe990eeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
