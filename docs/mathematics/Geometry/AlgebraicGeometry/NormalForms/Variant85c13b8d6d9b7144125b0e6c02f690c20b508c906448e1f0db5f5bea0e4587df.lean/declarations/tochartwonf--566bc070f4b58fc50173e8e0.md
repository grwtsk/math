# toCharTwoNF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b01adf652eb11c5e18374fdf97ad9f2128b647138877538a7f78a9b66889b7e4",
  "kind": "def",
  "lexical_name": "toCharTwoNF",
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
  "slug": "tochartwonf--566bc070f4b58fc50173e8e0",
  "source": {
    "blob": "4d68f92c7fde11602eda407bb10231172b8d608f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 681,
    "line": 679,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/NormalForms/Variant85c13b8d6d9b7144125b0e6c02f690c20b508c906448e1f0db5f5bea0e4587df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:566bc070f4b58fc50173e8e045144418cddb2bacdf17433fd22305b4e6f16e85",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/NormalForms/Variant85c13b8d6d9b7144125b0e6c02f690c20b508c906448e1f0db5f5bea0e4587df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b01adf652eb11c5e18374fdf97ad9f2128b647138877538a7f78a9b66889b7e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 679–681.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toCharTwoNF [DecidableEq F] : VariableChange F :=
  if ha₁ : W.a₁ = 0 then W.toCharTwoJEqZeroNF else W.toCharTwoJNeZeroNF ha₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/NormalForms/Variant85c13b8d6d9b7144125b0e6c02f690c20b508c906448e1f0db5f5bea0e4587df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/NormalForms/Variant85c13b8d6d9b7144125b0e6c02f690c20b508c906448e1f0db5f5bea0e4587df.lean#L679).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d68f92c7fde11602eda407bb10231172b8d608f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
