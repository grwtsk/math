# coind_monotone_or

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce66cca9-061d-ae25-7dc4-564681c640c1",
  "kind": "theorem",
  "lexical_name": "coind_monotone_or",
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
  "slug": "coind-monotone-or--80992fec3afa5052af67dd16",
  "source": {
    "blob": "a51ada2ab1a368f9427eff16bcb59d49d69a6584",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1186,
    "line": 1175,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantbe6957430864815ac8ad3fd4c4ac809fcf56223958a4268af81525d3b61938e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80992fec3afa5052af67dd16e5905f501b9150874e2599b7afb43bcd926b64df",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantbe6957430864815ac8ad3fd4c4ac809fcf56223958a4268af81525d3b61938e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce66cca9-061d-ae25-7dc4-564681c640c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1175–1186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[partial_fixpoint_monotone] theorem coind_monotone_or
    {α} [PartialOrder α] (f₁ : α → Prop) (f₂ : α → Prop)
    (h₁ : @monotone _ _ _ ReverseImplicationOrder.instOrder f₁)
    (h₂ : @monotone _ _ _ ReverseImplicationOrder.instOrder f₂) :
    @monotone _ _ _ ReverseImplicationOrder.instOrder (fun x => f₁ x ∨ f₂ x) :=
  fun x y hxy h =>
    match h with
    | Or.inl hfx₁ => Or.inl (h₁ x y hxy hfx₁)
    | Or.inr hfx₂ => Or.inr (h₂ x y hxy hfx₂)
end reverse_implication_order

section antitone
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantbe6957430864815ac8ad3fd4c4ac809fcf56223958a4268af81525d3b61938e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantbe6957430864815ac8ad3fd4c4ac809fcf56223958a4268af81525d3b61938e7.lean#L1175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a51ada2ab1a368f9427eff16bcb59d49d69a6584` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
