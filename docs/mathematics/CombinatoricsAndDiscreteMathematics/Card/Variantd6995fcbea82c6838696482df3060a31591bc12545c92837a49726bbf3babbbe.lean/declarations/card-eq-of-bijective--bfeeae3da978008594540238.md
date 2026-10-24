# card_eq_of_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9b2f7e9-2b16-0340-cfd2-e062d6383c16",
  "kind": "theorem",
  "lexical_name": "card_eq_of_bijective",
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
  "slug": "card-eq-of-bijective--bfeeae3da978008594540238",
  "source": {
    "blob": "ae16dc8a4e379463f11277b2f94281a27d0f2d93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 334,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfeeae3da97800859454023837c5ebf64ce4b130fb336d21001e2f77d2d1f9ed",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9b2f7e9-2b16-0340-cfd2-e062d6383c16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_eq_of_bijective (f : ∀ i, i < n → α) (hf : ∀ a ∈ s, ∃ i, ∃ h : i < n, f i h = a)
    (hf' : ∀ i (h : i < n), f i h ∈ s)
    (f_inj : ∀ i j (hi : i < n) (hj : j < n), f i hi = f j hj → i = j) : #s = n := by
  classical
  have : s = (range n).attach.image fun i => f i.1 (mem_range.1 i.2) := by
    ext a
    suffices _ : a ∈ s ↔ ∃ (i : _) (hi : i ∈ range n), f i (mem_range.1 hi) = a by
      simpa only [mem_image, mem_attach, true_and, Subtype.exists]
    constructor
    · intro ha; obtain ⟨i, hi, rfl⟩ := hf a ha; use i, mem_range.2 hi
    · rintro ⟨i, hi, rfl⟩; apply hf'
  calc
    #s = #((range n).attach.image fun i => f i.1 (mem_range.1 i.2)) := by rw [this]
    _ = #(range n).attach := ?_
    _ = #(range n) := card_attach
    _ = n := card_range n
  apply card_image_of_injective
  intro ⟨i, hi⟩ ⟨j, hj⟩ eq
  exact Subtype.ext <| f_inj i j (mem_range.1 hi) (mem_range.1 hj) eq

variable {t : Finset β}

/-- Given a bijection from a finite set `s` to a finite set `t`, the cardinalities of `s` and `t`
are equal.

The difference with `Finset.card_bij'` is that the bijection is specified as a surjective injection,
rather than by an inverse function.

The difference with `Finset.card_nbij` is that the bijection is allowed to use membership of the
domain, rather than being a non-dependent function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae16dc8a4e379463f11277b2f94281a27d0f2d93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
