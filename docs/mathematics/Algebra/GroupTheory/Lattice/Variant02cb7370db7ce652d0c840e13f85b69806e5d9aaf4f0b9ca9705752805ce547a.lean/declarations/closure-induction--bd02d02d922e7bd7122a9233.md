# closure_induction₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a05f2932-9082-b9f2-60ce-3e9bea7f669c",
  "kind": "theorem",
  "lexical_name": "closure_induction₂",
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
  "slug": "closure-induction--bd02d02d922e7bd7122a9233",
  "source": {
    "blob": "51200fd8fcf836810fcb37f25c37d5534b079d77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 381,
    "path": "GRWTSK/Algebra/GroupTheory/Lattice/Variant02cb7370db7ce652d0c840e13f85b69806e5d9aaf4f0b9ca9705752805ce547a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd02d02d922e7bd7122a9233b76aa2e432799ca0b8710a51efd4ed52b3914830",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lattice/Variant02cb7370db7ce652d0c840e13f85b69806e5d9aaf4f0b9ca9705752805ce547a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a05f2932-9082-b9f2-60ce-3e9bea7f669c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_induction₂ {p : (x y : G) → x ∈ closure k → y ∈ closure k → Prop}
    (mem : ∀ (x) (y) (hx : x ∈ k) (hy : y ∈ k), p x y (subset_closure hx) (subset_closure hy))
    (one_left : ∀ x hx, p 1 x (one_mem _) hx) (one_right : ∀ x hx, p x 1 hx (one_mem _))
    (mul_left : ∀ x y z hx hy hz, p x z hx hz → p y z hy hz → p (x * y) z (mul_mem hx hy) hz)
    (mul_right : ∀ y z x hy hz hx, p x y hx hy → p x z hx hz → p x (y * z) hx (mul_mem hy hz))
    (inv_left : ∀ x y hx hy, p x y hx hy → p x⁻¹ y (inv_mem hx) hy)
    (inv_right : ∀ x y hx hy, p x y hx hy → p x y⁻¹ hx (inv_mem hy))
    {x y : G} (hx : x ∈ closure k) (hy : y ∈ closure k) : p x y hx hy := by
  induction hy using closure_induction with
  | mem z hz => induction hx using closure_induction with
    | mem _ h => exact mem _ _ h hz
    | one => exact one_left _ (subset_closure hz)
    | mul _ _ _ _ h₁ h₂ => exact mul_left _ _ _ _ _ _ h₁ h₂
    | inv _ _ h => exact inv_left _ _ _ _ h
  | one => exact one_right x hx
  | mul _ _ _ _ h₁ h₂ => exact mul_right _ _ _ _ _ hx h₁ h₂
  | inv _ _ h => exact inv_right _ _ _ _ h

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lattice/Variant02cb7370db7ce652d0c840e13f85b69806e5d9aaf4f0b9ca9705752805ce547a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lattice/Variant02cb7370db7ce652d0c840e13f85b69806e5d9aaf4f0b9ca9705752805ce547a.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51200fd8fcf836810fcb37f25c37d5534b079d77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
