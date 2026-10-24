# twoDensityFactor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22a33d7dace1794538d26599c3ed87d7c3c62f74446c7fb4682d30ee451500de",
  "kind": "def",
  "lexical_name": "twoDensityFactor",
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
  "slug": "twodensityfactor--4cf2d3d55b067da227c6e3c7",
  "source": {
    "blob": "4c980fea517e42e96e44edf38d792de651e7c9eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 155,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variantd81964cac6fedc515b3d5f01093cbad09f6ad3a7b3f697ecaf4b03cf40f8b780.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cf2d3d55b067da227c6e3c72cdb7790738cd5649e529766bf95ef59ef62a0f0",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variantd81964cac6fedc515b3d5f01093cbad09f6ad3a7b3f697ecaf4b03cf40f8b780.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22a33d7dace1794538d26599c3ed87d7c3c62f74446c7fb4682d30ee451500de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def twoDensityFactor : ℝ := (Real.sqrt 2 - 1)^2 / 3

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variantd81964cac6fedc515b3d5f01093cbad09f6ad3a7b3f697ecaf4b03cf40f8b780.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variantd81964cac6fedc515b3d5f01093cbad09f6ad3a7b3f697ecaf4b03cf40f8b780.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c980fea517e42e96e44edf38d792de651e7c9eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
