# TransCmp.compareOfLessAndEq_of_irrefl_of_trans_of_antisymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbf7a60f-17de-806b-81aa-bc9d0b4e42a0",
  "kind": "theorem",
  "lexical_name": "TransCmp.compareOfLessAndEq_of_irrefl_of_trans_of_antisymm",
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
  "slug": "transcmp-compareoflessandeq-of-irrefl-of-trans-of-antisymm--b576032665b3684e57111a79",
  "source": {
    "blob": "37931abef329e5ae5b2d54421431be2971b668cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 187,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Order/Variant02be7c2995d5654538d3c14f90c613375d048c23d1f5206668a3bfaeff9ae95b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b576032665b3684e57111a79e0caac0a674838eb7a752022d0eb9421c3cf1044",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Order/Variant02be7c2995d5654538d3c14f90c613375d048c23d1f5206668a3bfaeff9ae95b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbf7a60f-17de-806b-81aa-bc9d0b4e42a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TransCmp.compareOfLessAndEq_of_irrefl_of_trans_of_antisymm
    [LT α] [DecidableLT α] [DecidableEq α]
    (lt_irrefl : ∀ x : α, ¬x < x)
    (lt_trans : ∀ {x y z : α}, x < y → y < z → x < z)
    (lt_antisymm : ∀ {x y : α}, ¬x < y → ¬y < x → x = y) :
    TransCmp (α := α) (compareOfLessAndEq · ·) :=
  TransOrd.compareOfLessAndEq_of_lt_trans_of_lt_iff lt_trans <| by
    intros
    constructor
    · intro h₁
      constructor
      · intro h₂
        apply lt_irrefl
        exact lt_trans h₁ h₂
      · intro | rfl => exact lt_irrefl _ h₁
    · intro ⟨h₁, h₂⟩
      by_contra h₃
      apply h₂
      exact lt_antisymm h₃ h₁

-- redundant? See `compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le` in core
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Order/Variant02be7c2995d5654538d3c14f90c613375d048c23d1f5206668a3bfaeff9ae95b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Order/Variant02be7c2995d5654538d3c14f90c613375d048c23d1f5206668a3bfaeff9ae95b.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37931abef329e5ae5b2d54421431be2971b668cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
