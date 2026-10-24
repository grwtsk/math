# Spec.forIn_string

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99a7e5db-303e-5419-609c-3d7a33d65c59",
  "kind": "theorem",
  "lexical_name": "Spec.forIn_string",
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
  "slug": "spec-forin-string--7beb4770a0bf8b362491b4b3",
  "source": {
    "blob": "4610651c0bd9fbc022aa7a0fd6447ac97c1b647e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2368,
    "line": 2328,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant352ced72fc74646a5dc68d28dfeb2cdb756038d61458976e61007f9aa28cc573.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7beb4770a0bf8b362491b4b33c4de07c5d4e1fb1e281a9ff4ce5afcbbdc03b0d",
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

Occurrence: `result:99a7e5db-303e-5419-609c-3d7a33d65c59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2328–2368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Spec.forIn_string
    {s : String} {init : β} {f : Char → β → m (ForInStep β)}
    (inv : StringInvariant s β Pred)
    {epost : EPred}
    (step : ∀ pos b (h : pos ≠ s.endPos),
      Triple
        (f (pos.get h) b)
        (inv pos b)
        (fun r => match r with
          | .yield b' => inv (pos.next h) b'
          | .done b' => inv s.endPos b')
        epost) :
    Triple (forIn s init f) (inv s.startPos init) (fun b => inv s.endPos b) epost := by
  suffices h : ∀ (p : s.Pos) (t₁ t₂ : String) (h : p.Splits t₁ t₂),
      Triple (forIn t₂.toList init f) (inv p init) (fun b => inv s.endPos b) epost by
    simpa using h s.startPos _ _ s.splits_startPos
  intro p
  induction p using String.Pos.next_induction generalizing init with
  | next p hp ih =>
    intro t₁ t₂ hsp
    obtain ⟨t₂, rfl⟩ := hsp.exists_eq_singleton_append hp
    simp only [String.toList_append, String.toList_singleton, List.cons_append, List.nil_append,
      List.forIn_cons]
    apply Triple.bind
    case hx => exact step _ _ hp
    case hf =>
      intro r
      cases r with
      | yield b => exact ih _ _ hsp.next
      | done b => exact Triple.pure _ (by dsimp; exact Lean.Order.PartialOrder.rel_refl)
  | endPos =>
    intro t₁ t₂ hsp
    obtain ⟨-, rfl⟩ := String.splits_endPos_iff.mp hsp
    simp only [String.toList_empty, List.forIn_nil]
    exact Triple.pure init Lean.Order.PartialOrder.rel_refl

/--
The type of loop invariants used by the specifications of `for ... in ...` loops over string slices.
A loop invariant is a function mapping the current position and state to a lattice element.
-/
@[spec_invariant_type, simp, grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant352ced72fc74646a5dc68d28dfeb2cdb756038d61458976e61007f9aa28cc573.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant352ced72fc74646a5dc68d28dfeb2cdb756038d61458976e61007f9aa28cc573.lean#L2328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4610651c0bd9fbc022aa7a0fd6447ac97c1b647e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
