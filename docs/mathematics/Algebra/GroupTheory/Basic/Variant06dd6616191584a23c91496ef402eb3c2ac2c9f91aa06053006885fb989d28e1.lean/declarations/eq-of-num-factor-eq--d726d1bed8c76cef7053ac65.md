# eq_of_num_factor_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4f7c3f3-02b1-195e-df26-5f92374d65d0",
  "kind": "theorem",
  "lexical_name": "eq_of_num_factor_eq",
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
  "slug": "eq-of-num-factor-eq--d726d1bed8c76cef7053ac65",
  "source": {
    "blob": "6a06b433741f3b74838de3af4a9b25caefd68eda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 137,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant06dd6616191584a23c91496ef402eb3c2ac2c9f91aa06053006885fb989d28e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d726d1bed8c76cef7053ac65b23f73a18a8ae4aa43a41a309eb0490cb0a1e6b7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant06dd6616191584a23c91496ef402eb3c2ac2c9f91aa06053006885fb989d28e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4f7c3f3-02b1-195e-df26-5f92374d65d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem eq_of_num_factor_eq {r r' r₁ r₂ : R} {s t : S} (h : r * t = r' * t) :
    r₁ * r * r₂ /ₒ s = r₁ * r' * r₂ /ₒ s := by
  rcases oreCondition r₂ t with ⟨r₂', t', hr₂⟩
  -- porting note: todo: use `assoc_rw`?
  calc
    r₁ * r * r₂ /ₒ s = r₁ * r * r₂ * t' /ₒ (s * t') := OreLocalization.expand (r₁ * r * r₂) s t' _
    _ = r₁ * r * (r₂ * t') /ₒ (s * t') := by simp [← mul_assoc]
    _ = r₁ * r * (t * r₂') /ₒ (s * t') := by rw [hr₂]
    _ = r₁ * (r * t) * r₂' /ₒ (s * t') := by simp [← mul_assoc]
    _ = r₁ * (r' * t) * r₂' /ₒ (s * t') := by rw [h]
    _ = r₁ * r' * (t * r₂') /ₒ (s * t') := by simp [← mul_assoc]
    _ = r₁ * r' * (r₂ * t') /ₒ (s * t') := by rw [hr₂]
    _ = r₁ * r' * r₂ * t' /ₒ (s * t') := by simp [← mul_assoc]
    _ = r₁ * r' * r₂ /ₒ s := (OreLocalization.expand _ _ _ _).symm
#align ore_localization.eq_of_num_factor_eq OreLocalization.eq_of_num_factor_eq

/-- A function or predicate over `R` and `S` can be lifted to `R[S⁻¹]` if it is invariant
under expansion on the right. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant06dd6616191584a23c91496ef402eb3c2ac2c9f91aa06053006885fb989d28e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant06dd6616191584a23c91496ef402eb3c2ac2c9f91aa06053006885fb989d28e1.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a06b433741f3b74838de3af4a9b25caefd68eda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
