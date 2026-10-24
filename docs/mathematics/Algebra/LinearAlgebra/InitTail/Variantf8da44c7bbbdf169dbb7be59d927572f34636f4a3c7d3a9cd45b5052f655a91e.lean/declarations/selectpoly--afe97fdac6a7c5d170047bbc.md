# selectPoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69551965c70fbc25f86e4e82fdcd33799fd84b77b664f59e3f52e3778791d9d3",
  "kind": "def",
  "lexical_name": "selectPoly",
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
  "slug": "selectpoly--afe97fdac6a7c5d170047bbc",
  "source": {
    "blob": "cf9918bff47dbabff4710d2ac122304e44370cb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 73,
    "path": "GRWTSK/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afe97fdac6a7c5d170047bbc671f11064ab7294039998b56c7a01bf767b5b46c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69551965c70fbc25f86e4e82fdcd33799fd84b77b664f59e3f52e3778791d9d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def selectPoly (n : ℕ) : MvPolynomial ℕ ℤ :=
  if P n then X n else 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf9918bff47dbabff4710d2ac122304e44370cb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
