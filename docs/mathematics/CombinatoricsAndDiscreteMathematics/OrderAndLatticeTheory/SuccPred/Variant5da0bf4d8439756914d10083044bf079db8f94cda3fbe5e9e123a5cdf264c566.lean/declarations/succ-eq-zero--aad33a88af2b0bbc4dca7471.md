# succ_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d91dc55-abf1-8681-1601-8a2a93542ed3",
  "kind": "theorem",
  "lexical_name": "succ_eq_zero",
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
  "slug": "succ-eq-zero--aad33a88af2b0bbc4dca7471",
  "source": {
    "blob": "9b23f6a4c5f38af0b72bb57404976237337311bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 202,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant5da0bf4d8439756914d10083044bf079db8f94cda3fbe5e9e123a5cdf264c566.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aad33a88af2b0bbc4dca7471b1fe6630bc2aaa64225ff397cf68390a65473ff9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant5da0bf4d8439756914d10083044bf079db8f94cda3fbe5e9e123a5cdf264c566.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d91dc55-abf1-8681-1601-8a2a93542ed3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem succ_eq_zero [AddZeroClass α] [OrderBot α] [CanonicallyOrderedAdd α] [One α] [NoMaxOrder α]
    [SuccAddOrder α] {a : WithBot α} : WithBot.succ a = 0 ↔ a = ⊥ := by
  cases a
  · simp [bot_eq_zero]
  · rename_i a
    simp only [WithBot.succ_coe, WithBot.coe_ne_bot, iff_false]
    by_contra h
    simpa [h] using max_of_succ_le (a := a)

end PartialOrder

section LinearOrder

variable [LinearOrder α]

section Add

variable [Add α] [One α] [SuccAddOrder α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant5da0bf4d8439756914d10083044bf079db8f94cda3fbe5e9e123a5cdf264c566.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant5da0bf4d8439756914d10083044bf079db8f94cda3fbe5e9e123a5cdf264c566.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b23f6a4c5f38af0b72bb57404976237337311bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
