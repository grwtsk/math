# PassivityObstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7651fbc087a67db3ca3ace65c43d98c8a1666d84ff97cff63ca0c94af64f19e9",
  "kind": "structure",
  "lexical_name": "PassivityObstruction",
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
  "slug": "passivityobstruction--dd5f460c20d300d0f78bdb34",
  "source": {
    "blob": "1f4b94e4aaa58f5d6587c6482549ff4953b6231e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 11,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PassivityObstruction/Variantc44cbcd0d2de25b3e89c9ff8bc1a47d53d9a3bf90753e480a76dab649144c175.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd5f460c20d300d0f78bdb34391bba7c7e9a2364c8abe5a4ad94e11ebac21368",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PassivityObstruction/Variantc44cbcd0d2de25b3e89c9ff8bc1a47d53d9a3bf90753e480a76dab649144c175.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7651fbc087a67db3ca3ace65c43d98c8a1666d84ff97cff63ca0c94af64f19e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PassivityObstruction where
  primeUniverse : FinitePrimeUniverse
  sourceCut : Finset primeUniverse.Prime
  insertedPrime : primeUniverse.Prime
  insertedPrime_not_mem :
    insertedPrime ∉ sourceCut
  compressionRank : Nat
  compressionRank_positive :
    0 < compressionRank
  witness : Fin compressionRank → ℚ
  quadraticAt :
    Finset primeUniverse.Prime →
      Nat → ℚ
  quadraticValue : ℚ
  quadraticValue_eq :
    quadraticValue =
      quadraticAt sourceCut compressionRank
  quadraticValue_neg :
    quadraticValue < 0
  properSubcutsNonnegative :
    ∀ subcut,
      subcut ⊂ sourceCut →
      0 ≤ quadraticAt subcut compressionRank
  lowerRanksNonnegative :
    ∀ rank,
      rank < compressionRank →
      0 ≤ quadraticAt sourceCut rank
  exactEvaluation : Prop
  exactEvaluationProof : exactEvaluation
  canonical : Prop
  canonicalProof : canonical
  certificateDigest : CertificateDigest

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PassivityObstruction/Variantc44cbcd0d2de25b3e89c9ff8bc1a47d53d9a3bf90753e480a76dab649144c175.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PassivityObstruction/Variantc44cbcd0d2de25b3e89c9ff8bc1a47d53d9a3bf90753e480a76dab649144c175.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f4b94e4aaa58f5d6587c6482549ff4953b6231e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
