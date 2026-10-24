# firstProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e2d8d8d5647188149773f0712dceb36ea7b70baaa15e943084c1a0d64380419",
  "kind": "def",
  "lexical_name": "firstProjection",
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
  "slug": "firstprojection--f958ac5bc15503d3dee34868",
  "source": {
    "blob": "1c2f562a7eb4121ef98a5b98625b7e2892462a72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 48,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/GraphDiagonalFixedSets/Variant03d73452c99c6fd3/WholeSubtypeEquivalence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f958ac5bc15503d3dee3486845de6878fc65b6ab631ff9a04877d1a4f9774eb2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/GraphDiagonalFixedSets/Variant03d73452c99c6fd3/WholeSubtypeEquivalence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e2d8d8d5647188149773f0712dceb36ea7b70baaa15e943084c1a0d64380419`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def firstProjection {Point : Type*} : CarrierProduct Point → Point :=
  Prod.fst

/-- Embed one carrier point on the diagonal of the doubled carrier.

This is a section `p ↦ (p, p)` of `firstProjection`.  It must not be confused
with the JavaScript operation named `reflectDiagonal`: that runtime operation
is coordinate reflection `(x, y) ↦ (y, x)` and has a different type.  Its
separate semantic object and involution theorem are `RasterPoint.reflectDiagonal`
and `RasterPoint.reflectDiagonal_involutive` above.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/GraphDiagonalFixedSets/Variant03d73452c99c6fd3/WholeSubtypeEquivalence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/GraphDiagonalFixedSets/Variant03d73452c99c6fd3/WholeSubtypeEquivalence.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c2f562a7eb4121ef98a5b98625b7e2892462a72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
