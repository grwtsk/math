# closure_induction₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7238243725830506f1a4c7c5a181b3ba60b9fd1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3cf6c94-6753-7349-b431-249d793272ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c6b74f2-626b-1d2d-28b4-9e7e8a99992f",
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
  "slug": "closure-induction--77c7cd8a186c47bd983122ee",
  "source": {
    "blob": "c7238243725830506f1a4c7c5a181b3ba60b9fd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 176,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77c7cd8a186c47bd983122ee8d512dcc463e66115e42f651d1015ce6710f8bc4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c6b74f2-626b-1d2d-28b4-9e7e8a99992f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_induction₂ {motive : (x y : M) → x ∈ closure s → y ∈ closure s → Prop}
    (mem : ∀ (x) (y) (hx : x ∈ s) (hy : y ∈ s), motive x y (subset_closure hx) (subset_closure hy))
    (one_left : ∀ x hx, motive 1 x (one_mem _) hx) (one_right : ∀ x hx, motive x 1 hx (one_mem _))
    (mul_left : ∀ x y z hx hy hz,
      motive x z hx hz → motive y z hy hz → motive (x * y) z (mul_mem hx hy) hz)
    (mul_right : ∀ x y z hx hy hz,
      motive z x hz hx → motive z y hz hy → motive z (x * y) hz (mul_mem hx hy))
    {x y : M} (hx : x ∈ closure s) (hy : y ∈ closure s) : motive x y hx hy := by
  induction hy using closure_induction with
  | mem z hz => induction hx using closure_induction with
    | mem _ h => exact mem _ _ h hz
    | one => exact one_left _ (subset_closure hz)
    | mul _ _ _ _ h₁ h₂ => exact mul_left _ _ _ _ _ _ h₁ h₂
  | one => exact one_right x hx
  | mul _ _ _ _ h₁ h₂ => exact mul_right _ _ _ _ _ hx h₁ h₂

/-- If `s` is a dense set in a monoid `M`, `Submonoid.closure s = ⊤`, then in order to prove that
some predicate `p` holds for all `x : M` it suffices to verify `p x` for `x ∈ s`, verify `p 1`,
and verify that `p x` and `p y` imply `p (x * y)`. -/
@[to_additive (attr := elab_as_elim)
      "If `s` is a dense set in an additive monoid `M`, `AddSubmonoid.closure s = ⊤`, then in
      order to prove that some predicate `p` holds for all `x : M` it suffices to verify `p x` for
      `x ∈ s`, verify `p 0`, and verify that `p x` and `p y` imply `p (x + y)`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7238243725830506f1a4c7c5a181b3ba60b9fd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
