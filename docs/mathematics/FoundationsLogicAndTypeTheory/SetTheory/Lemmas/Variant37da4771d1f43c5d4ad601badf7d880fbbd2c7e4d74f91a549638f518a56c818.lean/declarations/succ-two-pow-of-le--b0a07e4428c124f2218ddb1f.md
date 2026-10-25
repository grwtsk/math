# succ_two_pow_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9298b8cf-653c-e417-cb73-b838d6f24e2b",
  "kind": "lemma",
  "lexical_name": "succ_two_pow_of_le",
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
  "slug": "succ-two-pow-of-le--b0a07e4428c124f2218ddb1f",
  "source": {
    "blob": "966e73bb5526b51f20f8b395409977d6fb36d115",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Lemmas/Variant37da4771d1f43c5d4ad601badf7d880fbbd2c7e4d74f91a549638f518a56c818.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0a07e4428c124f2218ddb1f39beea7b046696658288f6a2dd58705f1fbeebd1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Lemmas/Variant37da4771d1f43c5d4ad601badf7d880fbbd2c7e4d74f91a549638f518a56c818.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9298b8cf-653c-e417-cb73-b838d6f24e2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma succ_two_pow_of_le {κ₁ κ₂ : Cardinal.{u}} [Fact κ₁.IsRegular]
    (h₀ : κ₁ ≤ κ₂) (hκ₂ : Cardinal.aleph0 ≤ κ₂) :
    letI : Fact (Cardinal.IsRegular (Order.succ (2 ^ κ₂))) :=
      ⟨isRegular_succ (hκ₂.trans (cantor _).le)⟩
    SharplyLT κ₁ (Order.succ (2 ^ κ₂)) := by
  let : Fact (Cardinal.IsRegular (Order.succ (2 ^ κ₂))) :=
    ⟨isRegular_succ (hκ₂.trans (cantor _).le)⟩
  refine of_pow_lt ?_ (fun α β hα hβ ↦ ?_)
  · simp only [Order.lt_succ_iff]
    exact h₀.trans (cantor _).le
  · simp only [Order.lt_succ_iff] at hβ ⊢
    refine (power_le_power_right hβ).trans ?_
    rw [← power_mul]
    refine power_le_power_left (by simp) ?_
    conv_rhs => rw [← mul_eq_self hκ₂]
    exact mul_le_mul_right (hα.le.trans h₀) _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Lemmas/Variant37da4771d1f43c5d4ad601badf7d880fbbd2c7e4d74f91a549638f518a56c818.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Lemmas/Variant37da4771d1f43c5d4ad601badf7d880fbbd2c7e4d74f91a549638f518a56c818.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `966e73bb5526b51f20f8b395409977d6fb36d115` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
