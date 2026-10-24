# riskIncrease_eq_iInf_sub'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "441a420e8c36cfde838ab71716b0e51ac6948a20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16cf738b-0f78-3369-6a70-d4b6399bccdc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:665301fd-c5a9-73c4-f2c0-7bfc91adedcb",
  "kind": "lemma",
  "lexical_name": "riskIncrease_eq_iInf_sub'",
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
  "slug": "riskincrease-eq-iinf-sub--90cd11f53d323397f35ba403",
  "source": {
    "blob": "441a420e8c36cfde838ab71716b0e51ac6948a20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 57,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90cd11f53d323397f35ba4037c3b74138f68eabaa1da3ac55ce1f86af6403e29",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:665301fd-c5a9-73c4-f2c0-7bfc91adedcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma riskIncrease_eq_iInf_sub' [Nonempty 𝓨] (hℓ : Measurable (uncurry ℓ)) (P : Kernel Θ 𝓧)
    (π : Measure Θ) [SFinite π] :
    riskIncrease ℓ P π = (⨅ z : 𝓨, ∫⁻ θ, P θ univ * ℓ θ z ∂π) - bayesRisk ℓ P π := by
  simp [riskIncrease, bayesRisk_of_subsingleton' hℓ, mul_comm, Kernel.comp_discard']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `441a420e8c36cfde838ab71716b0e51ac6948a20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
