# toENNRealOrderEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e759d65717a4154330b24690e4fd911121475bfcada6ea345ef1b923fd83ed67",
  "kind": "def",
  "lexical_name": "toENNRealOrderEmbedding",
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
  "slug": "toennrealorderembedding--0c68b95e4b88ab8dd6b06180",
  "source": {
    "blob": "35a644aef847680dc254bb4987c531fd82190214",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c68b95e4b88ab8dd6b0618055560a2cd6651d1e2795dc2a8ba3ee3205f28600",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e759d65717a4154330b24690e4fd911121475bfcada6ea345ef1b923fd83ed67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toENNRealOrderEmbedding : ℕ∞ ↪o ℝ≥0∞ :=
  Nat.castOrderEmbedding.withTopMap
#align enat.to_ennreal_order_embedding ENat.toENNRealOrderEmbedding

/-- Coercion `ℕ∞ → ℝ≥0∞` as a ring homomorphism. -/
@[simps! (config := { fullyApplied := false })]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35a644aef847680dc254bb4987c531fd82190214` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
