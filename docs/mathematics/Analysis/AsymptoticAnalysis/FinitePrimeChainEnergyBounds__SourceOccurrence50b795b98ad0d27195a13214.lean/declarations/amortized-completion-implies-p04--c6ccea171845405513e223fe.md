# amortized_completion_implies_P04

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52e0059d6f22783e7695e655955045203e164476",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7113fd4-a923-88b0-a8b3-46a166f67281",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "52e0059d6f22783e7695e655955045203e164476",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/Analysis/Asymptotics/FinitePrimeChainEnergyBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:478ad741-e30b-b673-23dd-5d0a0659fdf9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56408966-43f0-e901-aa91-3bf08d2cd396",
  "kind": "theorem",
  "lexical_name": "amortized_completion_implies_P04",
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
  "slug": "amortized-completion-implies-p04--c6ccea171845405513e223fe",
  "source": {
    "blob": "52e0059d6f22783e7695e655955045203e164476",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 85,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6ccea171845405513e223fe7666855f0857d7807bcb361176275ee2be5f8436",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds__SourceOccurrence50b795b98ad0d27195a13214.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56408966-43f0-e901-aa91-3bf08d2cd396`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem amortized_completion_implies_P04 {C₀ C₁ a q d H : ℝ}
    (hC₀ : 0 ≤ C₀) (hC₁ : 0 ≤ C₁) (ha : 0 ≤ a) (hq : 0 ≤ q) (hd : 0 ≤ d)
    (certificates : ∀ T : ℝ, 0 ≤ T →
      Nonempty (AmortizedCompletion T C₀ C₁ a q d H)) : P04 := by
  apply energy_polynomial_implies_P04
  refine ⟨Real.exp H*(C₀+C₁), d+a+q, by positivity, by linarith, ?_⟩
  intro T hT
  obtain ⟨cert⟩ := certificates T hT
  exact completion_energy_bound hT hC₀ hC₁ ha hq cert

end PPNCP04

#print axioms PPNCP04.completion_energy_bound
#print axioms PPNCP04.amortized_completion_implies_P04
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds__SourceOccurrence50b795b98ad0d27195a13214.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52e0059d6f22783e7695e655955045203e164476` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
