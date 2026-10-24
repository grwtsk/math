# genuineIntervalIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7beb5cb31ab337d270a16ab2461fca051995cad6de9e9b281f21074229b8c3c2",
  "kind": "def",
  "lexical_name": "genuineIntervalIntegral",
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
  "slug": "genuineintervalintegral--e2076b4a257df053e6948580",
  "source": {
    "blob": "2661d19f48902234c8a2a9d6291731c2069d2794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 107,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IntervalCorpus/Varianta48320f68e44149fde772098e5a0d6ebdd9d315f5cc2ab26e63a4f8e19edd3d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2076b4a257df053e6948580e5f485c5645c19c04543e5b82cefec3092ab4199",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IntervalCorpus/Varianta48320f68e44149fde772098e5a0d6ebdd9d315f5cc2ab26e63a4f8e19edd3d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7beb5cb31ab337d270a16ab2461fca051995cad6de9e9b281f21074229b8c3c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def genuineIntervalIntegral : CorpusSubsumptionLink where
  linkId := { value := "ideas:cubic-integration:integral:ftc-correction" }
  linkId_valid := by
    simp [StableId.Valid]
  source := source
    0
    "integral"
    (by decide)
    .definition
    "3156395ed4793b30a8ce6e64d6c1ae942a590d48dc26432092facb387b083822"
    (by
      unfold Digest.Valid
      native_decide)
  targetDeclaration := "Mathematics.Polynomial.intervalIntegral_cubic"
  targetDeclaration_nonempty := by decide
  relation := .semanticCorrection
  rationale :=
    "Connect the endpoint formula to Mathlib's interval integral through the fundamental theorem."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IntervalCorpus/Varianta48320f68e44149fde772098e5a0d6ebdd9d315f5cc2ab26e63a4f8e19edd3d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IntervalCorpus/Varianta48320f68e44149fde772098e5a0d6ebdd9d315f5cc2ab26e63a4f8e19edd3d4.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2661d19f48902234c8a2a9d6291731c2069d2794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
