# isUnit_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "682ee3b5347fbcc173c8471955ed7031006956e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 846,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/081ab86ca9ad08160dcc7ca48030ce8f32d01bf60c046ba293ca68649c62807d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f754342-fb17-e65c-9549-629f57f36238",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:67bda501-f486-d600-560c-c138ad465528",
  "kind": "theorem",
  "lexical_name": "isUnit_iff",
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
  "slug": "isunit-iff--bbc039d37a3a8b234fab46f4",
  "source": {
    "blob": "682ee3b5347fbcc173c8471955ed7031006956e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 868,
    "line": 846,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant081ab86ca9ad08160dcc7ca48030ce8f32d01bf60c046ba293ca68649c62807d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbc039d37a3a8b234fab46f47b2cb996efca06463bbb01af67ce79b667cd6b58",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant081ab86ca9ad08160dcc7ca48030ce8f32d01bf60c046ba293ca68649c62807d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67bda501-f486-d600-560c-c138ad465528`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 846–868.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_iff {x : R⟦Γ⟧} : IsUnit x ↔ IsUnit (x.leadingCoeff) := by
  constructor
  · rintro ⟨⟨u, i, ui, iu⟩, rfl⟩
    refine
      .of_mul_eq_one (i.leadingCoeff)
        ((coeff_mul_order_add_order u i).symm.trans ?_)
    rw [ui, coeff_one, ite_eq_left]
    rw [← order_mul (left_ne_zero_of_mul_eq_one ui) (right_ne_zero_of_mul_eq_one ui), ui, order_one]
  · rintro ⟨⟨u, i, ui, iu⟩, hx⟩
    rw [Units.val_mk] at hx
    rw [hx] at iu
    have h :=
      SummableFamily.one_sub_self_mul_hsum_powers (unit_aux x iu _ (neg_add_cancel x.order))
    rw [sub_sub_cancel] at h
    exact isUnit_of_mul_isUnit_right (.of_mul_eq_one _ h)

end IsDomain

section Field

variable [AddCommGroup Γ] [LinearOrder Γ] [IsOrderedAddMonoid Γ] [Field R]

@[simps -isSimp inv]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant081ab86ca9ad08160dcc7ca48030ce8f32d01bf60c046ba293ca68649c62807d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant081ab86ca9ad08160dcc7ca48030ce8f32d01bf60c046ba293ca68649c62807d.lean#L846).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `682ee3b5347fbcc173c8471955ed7031006956e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
