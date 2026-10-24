# rescaledPositiveFrame24

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8b80a4da06fea4df1af930f36006fa1b93e77b0b89e14957873b1edc73e52bc",
  "kind": "def",
  "lexical_name": "rescaledPositiveFrame24",
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
  "slug": "rescaledpositiveframe24--7e6c664a899868756736382a",
  "source": {
    "blob": "082afe71ee54aa7f849b1b3c5772b7f9b1888a53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 29,
    "path": "GRWTSK/Algebra/LinearAlgebra/RecognitionFixtures/Variant70d12be5b362f3cbe91542565dffdf9938a424067244b609d51b5b0057e44d93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e6c664a899868756736382a07e37e2a95db08ca33eb8564963ea4226185d4af",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RecognitionFixtures/Variant70d12be5b362f3cbe91542565dffdf9938a424067244b609d51b5b0057e44d93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8b80a4da06fea4df1af930f36006fa1b93e77b0b89e14957873b1edc73e52bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rescaledPositiveFrame24 : Matrix (Fin 2) (Fin 4) ℝ :=
  (!![2, 0; 0, 2] : Matrix (Fin 2) (Fin 2) ℝ) * positiveFixture24.matrix

/-- The change of representative multiplies every maximal minor by four. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RecognitionFixtures/Variant70d12be5b362f3cbe91542565dffdf9938a424067244b609d51b5b0057e44d93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RecognitionFixtures/Variant70d12be5b362f3cbe91542565dffdf9938a424067244b609d51b5b0057e44d93.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `082afe71ee54aa7f849b1b3c5772b7f9b1888a53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
