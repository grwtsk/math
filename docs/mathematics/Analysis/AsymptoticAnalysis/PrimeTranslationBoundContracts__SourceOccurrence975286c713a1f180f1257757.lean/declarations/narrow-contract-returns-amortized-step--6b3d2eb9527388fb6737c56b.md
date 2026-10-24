# narrow_contract_returns_amortized_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5eb9e89f2a56bfd1d9b091412807df945b1351b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/Analysis/AsymptoticAnalysis/PrimeTranslationBoundContracts.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83d74253-9d87-e388-e673-c6102abd24f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "c5eb9e89f2a56bfd1d9b091412807df945b1351b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/Analysis/Asymptotics/PrimeTranslationBoundContracts.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75f86101-475b-bee7-b767-1969f18b6471",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83bb527a-2a61-0751-af5f-1faf7a1103b5",
  "kind": "theorem",
  "lexical_name": "narrow_contract_returns_amortized_step",
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
  "slug": "narrow-contract-returns-amortized-step--6b3d2eb9527388fb6737c56b",
  "source": {
    "blob": "c5eb9e89f2a56bfd1d9b091412807df945b1351b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 99,
    "path": "GRWTSK/Analysis/Asymptotics/PrimeTranslationBoundContracts.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b3d2eb9527388fb6737c56bd06f488964cf41d20e26568e1b85a77d1593adf4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PrimeTranslationBoundContracts__SourceOccurrence975286c713a1f180f1257757.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83bb527a-2a61-0751-af5f-1faf7a1103b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem narrow_contract_returns_amortized_step
    (A : ReserveFunctional) (P B : Finset ℕ) (T κ C q : ℝ)
    (reduction : FourierReduction P B T)
    (hnarrow : narrowEnergy κ P B T ≤
      blockAmplification κ B*A.value P T-A.value (P ∪ B) T+
        C*harmonicMass B*(1+T)^q) :
    potential A (P ∪ B) T ≤ blockAmplification κ B*potential A P T+
      C*harmonicMass B*(1+T)^q := by
  have hb := fourier_reduction_broad_bound P B T κ reduction
  dsimp [potential]
  rw [mul_add]
  linarith

/-- The sufficient weaker replacement is a chain estimate at every real T,
rather than an estimate for every intermediate prime subset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/PrimeTranslationBoundContracts__SourceOccurrence975286c713a1f180f1257757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/PrimeTranslationBoundContracts.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5eb9e89f2a56bfd1d9b091412807df945b1351b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
