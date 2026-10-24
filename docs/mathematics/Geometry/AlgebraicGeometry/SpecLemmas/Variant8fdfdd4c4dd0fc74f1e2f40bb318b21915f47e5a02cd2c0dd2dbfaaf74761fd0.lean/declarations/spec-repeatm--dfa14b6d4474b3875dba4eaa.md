# Spec.repeatM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c750f0d07dbb6dc5e4bac3f98eaafb7d4a3d5fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2440,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f233075-7b92-bcfb-7024-d546f527fe7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e651ff22-e18b-08ed-aa51-b21cdfdc022f",
  "kind": "theorem",
  "lexical_name": "Spec.repeatM",
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
  "slug": "spec-repeatm--dfa14b6d4474b3875dba4eaa",
  "source": {
    "blob": "4c750f0d07dbb6dc5e4bac3f98eaafb7d4a3d5fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2491,
    "line": 2440,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfa14b6d4474b3875dba4eaa314c9029510e243c66f06fbd976feb2a52dc27a8",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e651ff22-e18b-08ed-aa51-b21cdfdc022f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2440–2491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Spec.repeatM
    {init : α} {f : α → m (α ⊕ β)} [Nonempty β]
    (measure : RepeatVariant α)
    (inv : RepeatInvariant α β Pred)
    (einv : EPred)
    (step : ∀ a,
      Triple
        (f a)
        (inv (.inl a))
        (fun r => match r with
          | .inl a' => ⌜measure a' < measure a⌝ ⊓ inv (.inl a')
          | .inr b => inv (.inr b))
        einv) :
    Triple
      (repeatM f init)
      (inv (.inl init))
      (fun b => inv (.inr b))
      einv := by
  suffices key : ∀ (n : Nat) (a : α), measure a ≤ n →
      Triple
        (_root_.repeatM f a)
        (inv (.inl a))
        (fun b => inv (.inr b))
        einv
    from key (measure init) init (Nat.le_refl _)
  intro n
  induction n using Nat.strongRecOn with
  | _ n ih =>
    intro a hle
    rw [repeatM_eq_of_monadTail (f := f) a]
    refine Triple.bind (f := fun x => match x with
      | .inl a' => _root_.repeatM f a'
      | .inr b => Pure.pure b)
      (f a) (fun r => match r with
        | .inl a' => ⌜measure a' < measure a⌝ ⊓ inv (.inl a')
        | .inr b => inv (.inr b))
      (step a) ?_
    rintro (a' | b)
    · refine Triple.intro ?_
      refine CompleteLattice.ofProp_meet_le_left ?_
      intro hlt
      exact (ih (measure a') (Nat.lt_of_lt_of_le hlt hle) a' (Nat.le_refl _)).le_wp
    · exact Triple.pure b Lean.Order.PartialOrder.rel_refl

/--
Construct an invariant from a loop invariant `inv` and a break condition `onBreak`.

`inv` holds at the end of every loop iteration (including the breaking one), and `onBreak` holds in
addition to `inv` once the loop is done. For a normal `while` loop `onBreak` can be taken as the
negation of the loop condition.
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean#L2440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c750f0d07dbb6dc5e4bac3f98eaafb7d4a3d5fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
