# soninBoundaryCochain_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9da6de2e12ff8c093e2d3f52f896397aade85b86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f987d5db56082b6d337c7a27be86e3fc5fcf6966980512910996779a4c2b31de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:359f9ed4-39ad-6b84-1b6f-297b204507fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d0d33b3-eab8-8870-7b6d-cca8fffb0f2c",
  "kind": "theorem",
  "lexical_name": "soninBoundaryCochain_closed",
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
  "slug": "soninboundarycochain-closed--00ecde7c4600ce70cadcd454",
  "source": {
    "blob": "9da6de2e12ff8c093e2d3f52f896397aade85b86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 34,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BoundaryCochain/Variantf987d5db56082b6d337c7a27be86e3fc5fcf6966980512910996779a4c2b31de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00ecde7c4600ce70cadcd454d4889bc02d4bae8683ccef1ccbca1d81465f7278",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BoundaryCochain/Variantf987d5db56082b6d337c7a27be86e3fc5fcf6966980512910996779a4c2b31de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d0d33b3-eab8-8870-7b6d-cca8fffb0f2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem soninBoundaryCochain_closed
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    {P : SoninProjectionProfile H}
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p q : U.Prime)
    (hp : p ∉ S)
    (hq : q ∉ S)
    (hpq : p ≠ q) :
    soninBoundaryCochain P S p
    +
    soninBoundaryCochain
      P
      (insert p S)
      q
    =
    soninBoundaryCochain P S q
    +
    soninBoundaryCochain
      P
      (insert q S)
      p :=
  cert.square_closed
    S p q hp hq hpq

end Mathematics.SemiLocalDefect.SoninCore
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BoundaryCochain/Variantf987d5db56082b6d337c7a27be86e3fc5fcf6966980512910996779a4c2b31de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BoundaryCochain/Variantf987d5db56082b6d337c7a27be86e3fc5fcf6966980512910996779a4c2b31de.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9da6de2e12ff8c093e2d3f52f896397aade85b86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
