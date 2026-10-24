# Spec.repeatM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57619409-ba9e-4364-11b0-fddd2ba59640",
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
  "slug": "spec-repeatm--004cea68f6141ad1d7d1baf6",
  "source": {
    "blob": "4610651c0bd9fbc022aa7a0fd6447ac97c1b647e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2499,
    "line": 2448,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant352ced72fc74646a5dc68d28dfeb2cdb756038d61458976e61007f9aa28cc573.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:004cea68f6141ad1d7d1baf6193ad09c1969a560c1825f98fdb5ce78a03ba603",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant352ced72fc74646a5dc68d28dfeb2cdb756038d61458976e61007f9aa28cc573.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57619409-ba9e-4364-11b0-fddd2ba59640`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2448–2499.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant352ced72fc74646a5dc68d28dfeb2cdb756038d61458976e61007f9aa28cc573.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant352ced72fc74646a5dc68d28dfeb2cdb756038d61458976e61007f9aa28cc573.lean#L2448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4610651c0bd9fbc022aa7a0fd6447ac97c1b647e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
