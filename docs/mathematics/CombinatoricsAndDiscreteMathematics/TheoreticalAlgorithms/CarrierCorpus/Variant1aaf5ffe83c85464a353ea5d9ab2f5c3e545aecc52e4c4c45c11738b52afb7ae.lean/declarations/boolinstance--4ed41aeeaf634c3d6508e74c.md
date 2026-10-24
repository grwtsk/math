# boolInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ba540721f128b1db7c7e06cad13e199be04cc9dc81239c4943d6240ae5e8852",
  "kind": "def",
  "lexical_name": "boolInstance",
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
  "slug": "boolinstance--4ed41aeeaf634c3d6508e74c",
  "source": {
    "blob": "8cb978ed23c444bc1440d07d18ddef749aa5d507",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CarrierCorpus/Variant1aaf5ffe83c85464a353ea5d9ab2f5c3e545aecc52e4c4c45c11738b52afb7ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ed41aeeaf634c3d6508e74c1c785d327590524f6f847cc176a8a762a97d4da6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CarrierCorpus/Variant1aaf5ffe83c85464a353ea5d9ab2f5c3e545aecc52e4c4c45c11738b52afb7ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ba540721f128b1db7c7e06cad13e199be04cc9dc81239c4943d6240ae5e8852`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boolInstance : CorpusSubsumptionLink :=
  Corpus.boolModule.subsumption
    { value := "ideas:boolean:bool:instance" }
    (by simp [StableId.Valid])
    0
    "instBoolAlgebra"
    (by decide)
    .instance
    {
      value :=
        "53d5ee7287e1adff7470bfabc6601fc6573c5766da8f6c955e390d141f594ef7"
    }
    (by
      unfold Digest.Valid
      native_decide)
    "Mathematics.Boolean.boolAlgebra"
    (by decide)
    .carrierReconstruction
    "Reuse the canonical Boolean algebra instance already available for Bool."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CarrierCorpus/Variant1aaf5ffe83c85464a353ea5d9ab2f5c3e545aecc52e4c4c45c11738b52afb7ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CarrierCorpus/Variant1aaf5ffe83c85464a353ea5d9ab2f5c3e545aecc52e4c4c45c11738b52afb7ae.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cb978ed23c444bc1440d07d18ddef749aa5d507` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
