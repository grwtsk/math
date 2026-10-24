# LieAlgebra.ad

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:871385001f7817f780c8afa90db2b8a3939c37ad17bd379e16cc300f4d6323e0",
  "kind": "def",
  "lexical_name": "LieAlgebra.ad",
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
  "slug": "liealgebra-ad--77cc1f9d7b939b1e315f7d60",
  "source": {
    "blob": "9220cf4e739fdfef4fc5a79bea65b2688b5fad05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 207,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77cc1f9d7b939b1e315f7d601bd6e364ac46dd8373eac457e8cc5175fe5fc35d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:871385001f7817f780c8afa90db2b8a3939c37ad17bd379e16cc300f4d6323e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LieAlgebra.ad : L →ₗ⁅R⁆ Module.End R L :=
  LieModule.toEnd R L L

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9220cf4e739fdfef4fc5a79bea65b2688b5fad05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
