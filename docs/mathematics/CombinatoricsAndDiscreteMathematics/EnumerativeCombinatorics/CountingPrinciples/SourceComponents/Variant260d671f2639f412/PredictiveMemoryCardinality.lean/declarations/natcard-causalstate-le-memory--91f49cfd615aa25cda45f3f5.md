# natCard_causalState_le_memory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f984fe02-16a8-4712-9693-eef560c08984",
  "kind": "theorem",
  "lexical_name": "natCard_causalState_le_memory",
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
  "slug": "natcard-causalstate-le-memory--91f49cfd615aa25cda45f3f5",
  "source": {
    "blob": "9a8266f7ef3b336c12301ffdeb4addd133cb3852",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 121,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant260d671f2639f412/PredictiveMemoryCardinality.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91f49cfd615aa25cda45f3f5124111558d48b25efc45c05df3d0aa8c5c9425ff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant260d671f2639f412/PredictiveMemoryCardinality.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f984fe02-16a8-4712-9693-eef560c08984`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natCard_causalState_le_memory
    [Finite (PredictiveRepresentation.Memory R)] :
    Nat.card (System.CausalState M) ≤
      Nat.card (PredictiveRepresentation.Memory R) := by
  letI : Finite R.EffectiveMemory :=
    Finite.of_injective Subtype.val Subtype.val_injective
  letI : Finite M.CausalState :=
    Finite.of_surjective R.effectiveToCausal
      R.effectiveToCausal_surjective
  exact
    (Nat.card_le_card_of_surjective R.effectiveToCausal
        R.effectiveToCausal_surjective).trans
      (Nat.card_le_card_of_injective Subtype.val Subtype.val_injective)

end PredictiveRepresentation

end ObservableRecursion

/-! Public aliases matching the project-wide representation API. -/

export ObservableRecursion (PredictiveRepresentation)

namespace PredictiveRepresentation

export ObservableRecursion.PredictiveRepresentation
  (EffectiveMemory
   toEffectiveMemory
   effectiveStep
   effectiveRead
   effectiveToCausal
   effectiveToCausal_toEffectiveMemory
   effectiveToCausal_surjective
   effectiveToCausal_step
   effectiveToCausal_read
   effectiveToCausal_unique
   causalState_terminal
   Exact
   effectiveToCausal_injective_of_exact
   effectiveMemoryEquivCausalState
   card_causalState_le_effectiveMemory
   card_effectiveMemory_le_memory
   card_causalState_le_memory
   card_causalState_le_memory_of_finite_memory
   card_causalState_le_memory_of_finite_state
   natCard_causalState_le_memory)

end PredictiveRepresentation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant260d671f2639f412/PredictiveMemoryCardinality.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant260d671f2639f412/PredictiveMemoryCardinality.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a8266f7ef3b336c12301ffdeb4addd133cb3852` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
