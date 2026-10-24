# prod_congr_of_eq_on_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5c22bf0-611f-7410-7a9c-6b42463c3fa8",
  "kind": "lemma",
  "lexical_name": "prod_congr_of_eq_on_inter",
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
  "slug": "prod-congr-of-eq-on-inter--27e08053caa5e3b57b95b4d2",
  "source": {
    "blob": "354a6eb14c150ad834ae953f0c21f023af30ff9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 352,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianteec5f83656c5e0901f241f202bdda975b085e9567b353684f24c5efa118f0df3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27e08053caa5e3b57b95b4d210c57e1d5c65f1d7ecc39be6a378dd93c1c09cee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Varianteec5f83656c5e0901f241f202bdda975b085e9567b353684f24c5efa118f0df3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5c22bf0-611f-7410-7a9c-6b42463c3fa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_congr_of_eq_on_inter {ι M : Type*} {s₁ s₂ : Finset ι} {f g : ι → M} [CommMonoid M]
    (h₁ : ∀ a ∈ s₁, a ∉ s₂ → f a = 1) (h₂ : ∀ a ∈ s₂, a ∉ s₁ → g a = 1)
    (h : ∀ a ∈ s₁, a ∈ s₂ → f a = g a) :
    ∏ a ∈ s₁, f a = ∏ a ∈ s₂, g a := by
  classical
  conv_lhs => rw [← sdiff_union_inter s₁ s₂, prod_union_eq_right (by aesop)]
  conv_rhs => rw [← sdiff_union_inter s₂ s₁, prod_union_eq_right (by aesop), inter_comm]
  exact prod_congr rfl (by simpa)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Varianteec5f83656c5e0901f241f202bdda975b085e9567b353684f24c5efa118f0df3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianteec5f83656c5e0901f241f202bdda975b085e9567b353684f24c5efa118f0df3.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `354a6eb14c150ad834ae953f0c21f023af30ff9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
