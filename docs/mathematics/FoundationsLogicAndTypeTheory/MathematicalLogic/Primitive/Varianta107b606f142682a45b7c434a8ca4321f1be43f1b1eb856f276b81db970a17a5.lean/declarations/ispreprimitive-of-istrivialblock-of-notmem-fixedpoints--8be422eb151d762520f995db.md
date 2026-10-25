# IsPreprimitive.of_isTrivialBlock_of_notMem_fixedPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:829dccb9-15fd-3b09-fa71-b3ea847e4938",
  "kind": "theorem",
  "lexical_name": "IsPreprimitive.of_isTrivialBlock_of_notMem_fixedPoints",
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
  "slug": "ispreprimitive-of-istrivialblock-of-notmem-fixedpoints--8be422eb151d762520f995db",
  "source": {
    "blob": "eccbdca641932e923e82e97b525acbf631b2c282",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 161,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta107b606f142682a45b7c434a8ca4321f1be43f1b1eb856f276b81db970a17a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8be422eb151d762520f995db9b0151cd865c1f75c0bc24a83439bb27207e172e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta107b606f142682a45b7c434a8ca4321f1be43f1b1eb856f276b81db970a17a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:829dccb9-15fd-3b09-fa71-b3ea847e4938`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPreprimitive.of_isTrivialBlock_of_notMem_fixedPoints {a : X} (ha : a ∉ fixedPoints G X)
    (H : ∀ ⦃B : Set X⦄, a ∈ B → IsBlock G B → IsTrivialBlock B) :
    IsPreprimitive G X :=
  have : IsPretransitive G X := by
    rw [isPretransitive_iff_base a]
    rcases H (mem_orbit_self a) (IsBlock.orbit a) with H | H
    · exfalso; apply ha
      rw [Set.subsingleton_iff_singleton (mem_orbit_self a)] at H
      simp only [mem_fixedPoints]
      intro g
      rw [← Set.mem_singleton_iff]; rw [← H]
      exact mem_orbit a g
    · intro x; rw [← MulAction.mem_orbit_iff, H]; exact Set.mem_univ x
  { isTrivialBlock_of_isBlock {B} hB := by
      obtain rfl | ⟨b, hb⟩ := B.eq_empty_or_nonempty
      · simp [IsTrivialBlock]
      · obtain ⟨g, hg⟩ := exists_smul_eq G b a
        rw [← IsTrivialBlock.smul_iff g]
        exact H ⟨b, hb, hg⟩ (hB.translate g) }

@[deprecated (since := "2025-05-23")]
alias _root_.AddAction.IsPreprimitive.of_isTrivialBlock_of_not_mem_fixedPoints :=
  AddAction.IsPreprimitive.of_isTrivialBlock_of_notMem_fixedPoints

@[to_additive existing, deprecated (since := "2025-05-23")]
alias IsPreprimitive.of_isTrivialBlock_of_not_mem_fixedPoints :=
  IsPreprimitive.of_isTrivialBlock_of_notMem_fixedPoints

/-- If the action is not trivial, then the trivial blocks condition implies preprimitivity
(pretransitivity is automatic) -/
@[to_additive
  "If the action is not trivial, then the trivial blocks condition implies preprimitivity
(pretransitivity is automatic)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta107b606f142682a45b7c434a8ca4321f1be43f1b1eb856f276b81db970a17a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta107b606f142682a45b7c434a8ca4321f1be43f1b1eb856f276b81db970a17a5.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eccbdca641932e923e82e97b525acbf631b2c282` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
