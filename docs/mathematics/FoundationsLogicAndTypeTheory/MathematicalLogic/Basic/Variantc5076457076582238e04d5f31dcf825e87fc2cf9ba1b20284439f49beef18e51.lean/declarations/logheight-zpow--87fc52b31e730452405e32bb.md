# logHeight₁_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:484a7cc3-b285-b019-3eea-e1f9d50035af",
  "kind": "lemma",
  "lexical_name": "logHeight₁_zpow",
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
  "slug": "logheight-zpow--87fc52b31e730452405e32bb",
  "source": {
    "blob": "546a7c78395eb14eb2394b2fc07e9231de189cc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 673,
    "line": 644,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5076457076582238e04d5f31dcf825e87fc2cf9ba1b20284439f49beef18e51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87fc52b31e730452405e32bbe7eec2fddaed58dc6413fa527a93b33c2483ac02",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5076457076582238e04d5f31dcf825e87fc2cf9ba1b20284439f49beef18e51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:484a7cc3-b285-b019-3eea-e1f9d50035af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 644–673.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma logHeight₁_zpow (x : K) (n : ℤ) : logHeight₁ (x ^ n) = n.natAbs * logHeight₁ x := by
  simp only [logHeight₁_eq_log_mulHeight₁, mulHeight₁_zpow, log_pow]

end Height

/-!
### Heights and "Segre embedding"

We show that the multiplicative height of `fun (i, j) ↦ x i * y j` is the product of the
multiplicative heights of `x` and `y` (and the analogous statement for logarithmic heights).

We also show the corresponding statements for product with arbitrarily many factors.
-/

namespace Height

open Height.AdmissibleAbsValues Function

variable {K : Type*} [Field K] [AdmissibleAbsValues K]

section many

universe u v

variable {α : Type u} [Fintype α] {ι : α → Type v} [∀ a, Finite (ι a)]

open Finset in
/-- Consider a finite family `x : (a : α) → ι a → K` of tuples. Then the multiplicative height
of the "multiplication table" `fun (I : (a : α) → ι a ↦ ∏ a, x a (I a))` is the product
of the multiplicative heights of all the `x a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5076457076582238e04d5f31dcf825e87fc2cf9ba1b20284439f49beef18e51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5076457076582238e04d5f31dcf825e87fc2cf9ba1b20284439f49beef18e51.lean#L644).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `546a7c78395eb14eb2394b2fc07e9231de189cc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
