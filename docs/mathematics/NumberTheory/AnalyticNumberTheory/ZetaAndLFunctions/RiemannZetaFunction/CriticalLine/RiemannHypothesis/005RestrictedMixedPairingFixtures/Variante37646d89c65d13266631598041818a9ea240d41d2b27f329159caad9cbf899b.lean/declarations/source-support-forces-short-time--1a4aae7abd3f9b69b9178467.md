# source_support_forces_short_time

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc902c70cb78f39b9d6b272a5d58857a6746c248",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e37646d89c65d13266631598041818a9ea240d41d2b27f329159caad9cbf899b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ade1647-a50e-17e0-10e1-8bb9f23f8074",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85fbb737-943b-8177-482d-5bfe3195a1c7",
  "kind": "theorem",
  "lexical_name": "source_support_forces_short_time",
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
  "slug": "source-support-forces-short-time--1a4aae7abd3f9b69b9178467",
  "source": {
    "blob": "cc902c70cb78f39b9d6b272a5d58857a6746c248",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 114,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/005RestrictedMixedPairingFixtures/Variante37646d89c65d13266631598041818a9ea240d41d2b27f329159caad9cbf899b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a4aae7abd3f9b69b9178467387bc258504b9487b5baba653d908048f786eae1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/005RestrictedMixedPairingFixtures/Variante37646d89c65d13266631598041818a9ea240d41d2b27f329159caad9cbf899b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85fbb737-943b-8177-482d-5bfe3195a1c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_support_forces_short_time {A : ℝ} (hA : 0 < A)
    {L a t v : ℝ} (hv : v ∈ Ico (L - A) (a - A)) (ht : L ≤ t)
    (hn : normalizedTest explicitSecondDerivative A (v - t) ≠ 0 ∨
      deriv (normalizedTest explicitSecondDerivative A) (v - t) ≠ 0) : t ∈ Ico L a :=
  ⟨ht, nonzero_left_spatial_atom_implies_time_lt hA hv.2 hn⟩

end
end FormalResearch.RiemannHypothesis.RestrictedMixedPairingFixtures
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/005RestrictedMixedPairingFixtures/Variante37646d89c65d13266631598041818a9ea240d41d2b27f329159caad9cbf899b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/005RestrictedMixedPairingFixtures/Variante37646d89c65d13266631598041818a9ea240d41d2b27f329159caad9cbf899b.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc902c70cb78f39b9d6b272a5d58857a6746c248` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
