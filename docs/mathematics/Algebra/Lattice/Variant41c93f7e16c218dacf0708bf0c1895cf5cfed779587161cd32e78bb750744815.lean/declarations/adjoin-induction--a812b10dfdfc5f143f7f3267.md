# adjoin_induction₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49b32bd83e8a3d594078fad84215f0c3e76463cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 472,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41c93f7e16c218dacf0708bf0c1895cf5cfed779587161cd32e78bb750744815.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1aa3726-ef1f-58ab-9160-e40e30eded71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c98a111c-74a8-62c0-cadd-175cb887caf9",
  "kind": "theorem",
  "lexical_name": "adjoin_induction₂",
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
  "slug": "adjoin-induction--a812b10dfdfc5f143f7f3267",
  "source": {
    "blob": "49b32bd83e8a3d594078fad84215f0c3e76463cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 472,
    "path": "GRWTSK/Algebra/Lattice/Variant41c93f7e16c218dacf0708bf0c1895cf5cfed779587161cd32e78bb750744815.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a812b10dfdfc5f143f7f3267fc1702cf5579067abb9fb09e1facf04874561aa1",
  "verification": {
    "reference": "docs/verification/Algebra/Lattice/Variant41c93f7e16c218dacf0708bf0c1895cf5cfed779587161cd32e78bb750744815.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c98a111c-74a8-62c0-cadd-175cb887caf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 472–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_induction₂ {s : Set A} {p : (x y : A) → x ∈ adjoin R s → y ∈ adjoin R s → Prop}
    (mem_mem : ∀ (x) (y) (hx : x ∈ s) (hy : y ∈ s), p x y (subset_adjoin hx) (subset_adjoin hy))
    (algebraMap_both : ∀ r₁ r₂, p (algebraMap R A r₁) (algebraMap R A r₂) (algebraMap_mem _ r₁)
      (algebraMap_mem _ r₂))
    (algebraMap_left : ∀ (r) (x) (hx : x ∈ s), p (algebraMap R A r) x (algebraMap_mem _ r)
      (subset_adjoin hx))
    (algebraMap_right : ∀ (r) (x) (hx : x ∈ s), p x (algebraMap R A r) (subset_adjoin hx)
      (algebraMap_mem _ r))
    (add_left : ∀ x y z hx hy hz, p x z hx hz → p y z hy hz → p (x + y) z (add_mem hx hy) hz)
    (add_right : ∀ x y z hx hy hz, p x y hx hy → p x z hx hz → p x (y + z) hx (add_mem hy hz))
    (mul_left : ∀ x y z hx hy hz, p x z hx hz → p y z hy hz → p (x * y) z (mul_mem hx hy) hz)
    (mul_right : ∀ x y z hx hy hz, p x y hx hy → p x z hx hz → p x (y * z) hx (mul_mem hy hz))
    {x y : A} (hx : x ∈ adjoin R s) (hy : y ∈ adjoin R s) :
    p x y hx hy := by
  induction hy using adjoin_induction with
  | mem z hz => induction hx using adjoin_induction with
    | mem _ h => exact mem_mem _ _ h hz
    | algebraMap _ => exact algebraMap_left _ _ hz
    | mul _ _ _ _ h₁ h₂ => exact mul_left _ _ _ _ _ _ h₁ h₂
    | add _ _ _ _ h₁ h₂ => exact add_left _ _ _ _ _ _ h₁ h₂
  | algebraMap r =>
    induction hx using adjoin_induction with
    | mem _ h => exact algebraMap_right _ _ h
    | algebraMap _ => exact algebraMap_both _ _
    | mul _ _ _ _ h₁ h₂ => exact mul_left _ _ _ _ _ _ h₁ h₂
    | add _ _ _ _ h₁ h₂ => exact add_left _ _ _ _ _ _ h₁ h₂
  | mul _ _ _ _ h₁ h₂ => exact mul_right _ _ _ _ _ _ h₁ h₂
  | add _ _ _ _ h₁ h₂ => exact add_right _ _ _ _ _ _ h₁ h₂

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lattice/Variant41c93f7e16c218dacf0708bf0c1895cf5cfed779587161cd32e78bb750744815.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lattice/Variant41c93f7e16c218dacf0708bf0c1895cf5cfed779587161cd32e78bb750744815.lean#L472).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49b32bd83e8a3d594078fad84215f0c3e76463cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
