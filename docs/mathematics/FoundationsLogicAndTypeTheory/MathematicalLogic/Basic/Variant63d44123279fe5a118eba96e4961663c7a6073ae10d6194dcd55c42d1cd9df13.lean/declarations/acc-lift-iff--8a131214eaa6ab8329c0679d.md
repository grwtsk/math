# acc_lift₂_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0cec2e44-1b86-71a1-e741-78f6f8a4df17",
  "kind": "theorem",
  "lexical_name": "acc_lift₂_iff",
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
  "slug": "acc-lift-iff--8a131214eaa6ab8329c0679d",
  "source": {
    "blob": "311540d0db8cb2155ba005e59cea661a8ae0004b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 426,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant63d44123279fe5a118eba96e4961663c7a6073ae10d6194dcd55c42d1cd9df13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a131214eaa6ab8329c0679d60e63bf7b220897e53bfdc066b455c0cd1d609e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant63d44123279fe5a118eba96e4961663c7a6073ae10d6194dcd55c42d1cd9df13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cec2e44-1b86-71a1-e741-78f6f8a4df17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem acc_lift₂_iff {_ : Setoid α} {r : α → α → Prop}
    {H : ∀ (a₁ b₁ a₂ b₂ : α), a₁ ≈ a₂ → b₁ ≈ b₂ → r a₁ b₁ = r a₂ b₂} {a} :
    Acc (Quotient.lift₂ r H) ⟦a⟧ ↔ Acc r a := by
  constructor
  · exact RelHomClass.acc (Quotient.mkRelHom H) a
  · intro ac
    induction ac with | intro _ _ IH => ?_
    refine ⟨_, fun q h => ?_⟩
    obtain ⟨a', rfl⟩ := q.exists_rep
    exact IH a' h

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant63d44123279fe5a118eba96e4961663c7a6073ae10d6194dcd55c42d1cd9df13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant63d44123279fe5a118eba96e4961663c7a6073ae10d6194dcd55c42d1cd9df13.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `311540d0db8cb2155ba005e59cea661a8ae0004b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
