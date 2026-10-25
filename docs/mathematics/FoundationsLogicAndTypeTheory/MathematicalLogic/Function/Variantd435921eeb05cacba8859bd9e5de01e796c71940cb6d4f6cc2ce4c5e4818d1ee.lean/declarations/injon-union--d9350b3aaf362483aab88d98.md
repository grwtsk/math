# injOn_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96bd2c30-b362-36fb-8c68-d28909cb0f57",
  "kind": "theorem",
  "lexical_name": "injOn_union",
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
  "slug": "injon-union--d9350b3aaf362483aab88d98",
  "source": {
    "blob": "c7f4cd9d0bda8256f7177db8cbcd2fb5d666d167",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 646,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantd435921eeb05cacba8859bd9e5de01e796c71940cb6d4f6cc2ce4c5e4818d1ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9350b3aaf362483aab88d980ca36e27c99a39d197f325e6e3b4fdef446cf7be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantd435921eeb05cacba8859bd9e5de01e796c71940cb6d4f6cc2ce4c5e4818d1ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96bd2c30-b362-36fb-8c68-d28909cb0f57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 646–656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injOn_union (h : Disjoint s₁ s₂) :
    InjOn f (s₁ ∪ s₂) ↔ InjOn f s₁ ∧ InjOn f s₂ ∧ ∀ x ∈ s₁, ∀ y ∈ s₂, f x ≠ f y := by
  refine' ⟨fun H => ⟨H.mono <| subset_union_left _ _, H.mono <| subset_union_right _ _, _⟩, _⟩
  · intro x hx y hy hxy
    obtain rfl : x = y := H (Or.inl hx) (Or.inr hy) hxy
    exact h.le_bot ⟨hx, hy⟩
  · rintro ⟨h₁, h₂, h₁₂⟩
    rintro x (hx | hx) y (hy | hy) hxy
    exacts [h₁ hx hy hxy, (h₁₂ _ hx _ hy hxy).elim, (h₁₂ _ hy _ hx hxy.symm).elim, h₂ hx hy hxy]
#align set.inj_on_union Set.injOn_union

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantd435921eeb05cacba8859bd9e5de01e796c71940cb6d4f6cc2ce4c5e4818d1ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantd435921eeb05cacba8859bd9e5de01e796c71940cb6d4f6cc2ce4c5e4818d1ee.lean#L646).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7f4cd9d0bda8256f7177db8cbcd2fb5d666d167` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
