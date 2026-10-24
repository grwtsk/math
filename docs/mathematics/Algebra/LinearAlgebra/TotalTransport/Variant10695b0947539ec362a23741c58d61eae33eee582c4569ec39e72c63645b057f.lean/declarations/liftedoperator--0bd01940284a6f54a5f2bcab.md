# liftedOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e06c53f459323391790da8baad0a65fe98f97e0574e81fc04836885d012e324",
  "kind": "def",
  "lexical_name": "liftedOperator",
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
  "slug": "liftedoperator--0bd01940284a6f54a5f2bcab",
  "source": {
    "blob": "898b01de39e7a98c4846df9e17e030deec17dc39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 40,
    "path": "GRWTSK/Algebra/LinearAlgebra/TotalTransport/Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bd01940284a6f54a5f2bcab70ae3c1b1db4d89af7043249065c8da92b5ce29b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TotalTransport/Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e06c53f459323391790da8baad0a65fe98f97e0574e81fc04836885d012e324`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftedOperator (fold : FoldUnitary terrain) :
    FiniteOperator (Index × SpindleIndex) (Index × SpindleIndex) :=
  fold.operator ⊗ₖ (1 : Matrix SpindleIndex SpindleIndex ℂ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TotalTransport/Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TotalTransport/Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `898b01de39e7a98c4846df9e17e030deec17dc39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
