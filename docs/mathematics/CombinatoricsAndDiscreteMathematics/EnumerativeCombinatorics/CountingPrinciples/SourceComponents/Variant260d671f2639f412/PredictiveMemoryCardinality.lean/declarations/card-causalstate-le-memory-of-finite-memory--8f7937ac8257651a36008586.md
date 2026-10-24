# card_causalState_le_memory_of_finite_memory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4912d580-2b2a-ad64-e257-903c4581de7e",
  "kind": "theorem",
  "lexical_name": "card_causalState_le_memory_of_finite_memory",
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
  "slug": "card-causalstate-le-memory-of-finite-memory--8f7937ac8257651a36008586",
  "source": {
    "blob": "9a8266f7ef3b336c12301ffdeb4addd133cb3852",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 92,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant260d671f2639f412/PredictiveMemoryCardinality.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f7937ac8257651a360085867ac20d0a2df1a9ccbc8b9795c2664bbafc21d8e9",
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

Occurrence: `result:4912d580-2b2a-ad64-e257-903c4581de7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_causalState_le_memory_of_finite_memory
    [Fintype (PredictiveRepresentation.Memory R)] :
    Nat.card (System.CausalState M) ≤
      Fintype.card (PredictiveRepresentation.Memory R) := by
  letI : Finite (EffectiveMemory R) :=
    Finite.of_injective Subtype.val Subtype.val_injective
  letI : Finite (System.CausalState M) :=
    Finite.of_surjective R.effectiveToCausal
      R.effectiveToCausal_surjective
  letI : Fintype (EffectiveMemory R) :=
    Fintype.ofFinite (EffectiveMemory R)
  letI : Fintype (System.CausalState M) :=
    Fintype.ofFinite (System.CausalState M)
  rw [Nat.card_eq_fintype_card]
  exact R.card_causalState_le_memory

/-- Finite-state specialization when concrete state is also finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant260d671f2639f412/PredictiveMemoryCardinality.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant260d671f2639f412/PredictiveMemoryCardinality.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a8266f7ef3b336c12301ffdeb4addd133cb3852` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
