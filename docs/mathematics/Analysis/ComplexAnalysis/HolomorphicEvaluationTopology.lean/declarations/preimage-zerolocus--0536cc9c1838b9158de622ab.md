# preimage_zeroLocus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b0f9089f9ca3f1a7ff6cf183306cfde6540e831",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/Analysis/Complex/HolomorphicEvaluationTopology.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3111cba-16e8-d03c-57f9-683f187fe84b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d67a81d8-2cc8-ab9b-c7f8-352b53509fed",
  "kind": "theorem",
  "lexical_name": "preimage_zeroLocus",
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
  "slug": "preimage-zerolocus--0536cc9c1838b9158de622ab",
  "source": {
    "blob": "4b0f9089f9ca3f1a7ff6cf183306cfde6540e831",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 23,
    "path": "GRWTSK/Analysis/Complex/HolomorphicEvaluationTopology.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0536cc9c1838b9158de622ab40b419aec91507e947ddd6a6705adec7fb957ec8",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicEvaluationTopology.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d67a81d8-2cc8-ab9b-c7f8-352b53509fed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_zeroLocus (A : Domain) (s : Set (HolomorphicSection A)) :
    pointToSpectrum A ⁻¹' PrimeSpectrum.zeroLocus s =
      ⋂ f : s, {z : A.carrier | (f.1 : Section A) z = 0} := by
  ext z
  change (s ⊆ (evaluationPrime A z).asIdeal) ↔
    z ∈ ⋂ f : s, {z : A.carrier | (f.1 : Section A) z = 0}
  simp only [Set.mem_iInter, Set.mem_setOf_eq]
  constructor
  · intro h f
    exact h f.property
  · intro h f hf
    exact h ⟨f, hf⟩

/-- Analytic evaluation is continuous into the Zariski topology.

A Zariski closed set pulls back to an arbitrary intersection of closed zero sets of continuous
holomorphic sections. This does not identify the analytic topology with the Zariski topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicEvaluationTopology.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicEvaluationTopology.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b0f9089f9ca3f1a7ff6cf183306cfde6540e831` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
