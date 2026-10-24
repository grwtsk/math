# IndepFun.singleton_indepSets_of_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efdcf537-abfd-7e13-84cb-0b529e4382f8",
  "kind": "lemma",
  "lexical_name": "IndepFun.singleton_indepSets_of_indicator",
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
  "slug": "indepfun-singleton-indepsets-of-indicator--d429bf10a4d3d29409038ab5",
  "source": {
    "blob": "55a4270c1cb09b6774810513d7887b5b7710cfd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 82,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantc7bee5eb4f92f8d2e1c100d450da0b826fd5513a9f94ea73ad3c89929087c82b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d429bf10a4d3d29409038ab5b26c66f9815c360814cf1202ff80003833b70a67",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantc7bee5eb4f92f8d2e1c100d450da0b826fd5513a9f94ea73ad3c89929087c82b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efdcf537-abfd-7e13-84cb-0b529e4382f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IndepFun.singleton_indepSets_of_indicator {𝓧 : Type*} [mX : MeasurableSpace 𝓧] {A : Set Ω}
    {X : Ω → 𝓧} (h : (A.indicator (1 : Ω → ℝ)) ⟂ᵢ[P] X) :
    IndepSets {A} {s | MeasurableSet[mX.comap X] s} P := by
  rw [IndepSets_iff]
  rintro s - hs ⟨t, ht, rfl⟩
  rw [Set.mem_singleton_iff.1 hs]
  have hA' : A = A.indicator (1 : Ω → ℝ) ⁻¹' {1} := by ext; simp [Set.indicator]
  rw [hA']
  exact h.measure_inter_preimage_eq_mul _ _ (by simp) ht

variable {E : S → Type*} {F : T → Type*} {G H : Type*}
  [∀ s, TopologicalSpace (E s)] [∀ s, MeasurableSpace (E s)] [∀ s, BorelSpace (E s)]
  [∀ s, HasOuterApproxClosed (E s)]
  [∀ t, TopologicalSpace (F t)] [∀ t, MeasurableSpace (F t)] [∀ t, BorelSpace (F t)]
  [∀ t, HasOuterApproxClosed (F t)]
  [TopologicalSpace G] [MeasurableSpace G] [BorelSpace G] [HasOuterApproxClosed G]
  [TopologicalSpace H] [MeasurableSpace H] [BorelSpace H] [HasOuterApproxClosed H]
  {X : (s : S) → Ω → E s} {Y : (t : T) → Ω → F t} {Z : Ω → G} {U : Ω → H}

section Fintype

variable [Fintype S] [Fintype T]

section IndepFun

variable [IsFiniteMeasure P]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantc7bee5eb4f92f8d2e1c100d450da0b826fd5513a9f94ea73ad3c89929087c82b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantc7bee5eb4f92f8d2e1c100d450da0b826fd5513a9f94ea73ad3c89929087c82b.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55a4270c1cb09b6774810513d7887b5b7710cfd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
