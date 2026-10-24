# criticalPrimeTest_deriv_lipschitz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a255cf1490c6495e1d853e140d4e6a494275b8ae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52def6c7a41e144c996b4f9e922df4bd7e6b4b29141661a4d2958dfadd044095.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9f234d1-ea8f-34b6-a7ef-a170a23674bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8102a9e-7adc-ea53-ff15-18daf9383d9a",
  "kind": "theorem",
  "lexical_name": "criticalPrimeTest_deriv_lipschitz",
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
  "slug": "criticalprimetest-deriv-lipschitz--d8da37315472cfefd0128562",
  "source": {
    "blob": "a255cf1490c6495e1d853e140d4e6a494275b8ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 31,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalSecondAbel/Variant52def6c7a41e144c996b4f9e922df4bd7e6b4b29141661a4d2958dfadd044095.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8da37315472cfefd0128562918f8f57289aaa83f0579606d3be5f8c202ed732",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalSecondAbel/Variant52def6c7a41e144c996b4f9e922df4bd7e6b4b29141661a4d2958dfadd044095.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8102a9e-7adc-ea53-ff15-18daf9383d9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalPrimeTest_deriv_lipschitz {A : ℝ} (hA : 0 < A) :
    ∃ K : ℝ≥0, LipschitzWith K (deriv (criticalPrimeTest A)) := by
  have hs : HasCompactSupport (criticalPrimeTest A) :=
    (sourceCorrelation_hasCompactSupport A hA).mul_left
  exact (criticalPrimeTest_contDiff_two hA).deriv
    |>.lipschitzWith_of_hasCompactSupport hs.deriv (by norm_num)

/-- Both max-defined phases give actual AC of the paired derivative.
This is not a global C2 assertion for the paired test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalSecondAbel/Variant52def6c7a41e144c996b4f9e922df4bd7e6b4b29141661a4d2958dfadd044095.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalSecondAbel/Variant52def6c7a41e144c996b4f9e922df4bd7e6b4b29141661a4d2958dfadd044095.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a255cf1490c6495e1d853e140d4e6a494275b8ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
