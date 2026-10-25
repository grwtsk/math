# induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2643dfb-e2ee-905b-3c91-cbd6b46ea5c2",
  "kind": "lemma",
  "lexical_name": "induction_on",
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
  "slug": "induction-on--413f32fa49c79c2743ff6aa1",
  "source": {
    "blob": "a2b65e2829a5030ca2996142f86850a585101d39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant5e3f93656d7cdffbe78c407b3384a379a95d65b284f859c87ffcf584fcef8619.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:413f32fa49c79c2743ff6aa1fd358e3635b272a5d270c7fb1599bcc2ab4ffc47",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Init/Variant5e3f93656d7cdffbe78c407b3384a379a95d65b284f859c87ffcf584fcef8619.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2643dfb-e2ee-905b-3c91-cbd6b46ea5c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[elab_as_elim, induction_eliminator] protected lemma induction_on {motive : ℤ → Prop} (i : ℤ)
    (zero : motive 0) (succ : ∀ i : ℕ, motive i → motive (i + 1))
    (pred : ∀ i : ℕ, motive (-i) → motive (-i - 1)) : motive i := by
  cases i with
  | ofNat i =>
    induction i with
    | zero => exact zero
    | succ i ih => exact succ _ ih
  | negSucc i =>
    suffices ∀ n : ℕ, motive (-n) from this (i + 1)
    intro n; induction n with
    | zero => simp [zero]
    | succ n ih => simpa [natCast_succ, Int.neg_add, Int.sub_eq_add_neg] using pred _ ih

section inductionOn'

variable {motive : ℤ → Sort*} (z b : ℤ) (zero : motive b)
  (succ : ∀ k, b ≤ k → motive k → motive (k + 1)) (pred : ∀ k ≤ b, motive k → motive (k - 1))

/-- Inductively define a function on `ℤ` by defining it at `b`, for the `succ` of a number greater
than `b`, and the `pred` of a number less than `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Init/Variant5e3f93656d7cdffbe78c407b3384a379a95d65b284f859c87ffcf584fcef8619.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant5e3f93656d7cdffbe78c407b3384a379a95d65b284f859c87ffcf584fcef8619.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2b65e2829a5030ca2996142f86850a585101d39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
