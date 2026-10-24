# toCharTwoJNeZeroNF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d37aed4770ed52328952338ef3cb7078ff659c6e42be62298d781b948b80f601",
  "kind": "def",
  "lexical_name": "toCharTwoJNeZeroNF",
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
  "slug": "tochartwojnezeronf--784006abd4570a2bba9dcda7",
  "source": {
    "blob": "4d68f92c7fde11602eda407bb10231172b8d608f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 663,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/NormalForms/Variant85c13b8d6d9b7144125b0e6c02f690c20b508c906448e1f0db5f5bea0e4587df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:784006abd4570a2bba9dcda7412c8b32a16af01470a2dafa28cb3084593b109a",
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

Occurrence: `declaration:d37aed4770ed52328952338ef3cb7078ff659c6e42be62298d781b948b80f601`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toCharTwoJNeZeroNF (W : WeierstrassCurve F) (ha₁ : W.a₁ ≠ 0) : VariableChange F :=
  ⟨Units.mk0 _ ha₁, W.a₃ / W.a₁, 0, (W.a₁ ^ 2 * W.a₄ + W.a₃ ^ 2) / W.a₁ ^ 3⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/NormalForms/Variant85c13b8d6d9b7144125b0e6c02f690c20b508c906448e1f0db5f5bea0e4587df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/NormalForms/Variant85c13b8d6d9b7144125b0e6c02f690c20b508c906448e1f0db5f5bea0e4587df.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d68f92c7fde11602eda407bb10231172b8d608f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
