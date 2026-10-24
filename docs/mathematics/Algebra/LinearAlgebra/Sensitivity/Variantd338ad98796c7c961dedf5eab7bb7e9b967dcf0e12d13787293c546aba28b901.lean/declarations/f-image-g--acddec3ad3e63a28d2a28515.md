# f_image_g

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46f94bda08682495ae6c3f83a879fa5df3d9e82b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 331,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d338ad98796c7c961dedf5eab7bb7e9b967dcf0e12d13787293c546aba28b901.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b82f72d4-3497-ce04-fa0a-aa749529938d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd621001-79f2-e4f8-d6bf-a03563480ec9",
  "kind": "theorem",
  "lexical_name": "f_image_g",
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
  "slug": "f-image-g--acddec3ad3e63a28d2a28515",
  "source": {
    "blob": "46f94bda08682495ae6c3f83a879fa5df3d9e82b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 331,
    "path": "GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variantd338ad98796c7c961dedf5eab7bb7e9b967dcf0e12d13787293c546aba28b901.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acddec3ad3e63a28d2a28515c463beabd7e923c16e7c5ef12f36e1de05101edc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Sensitivity/Variantd338ad98796c7c961dedf5eab7bb7e9b967dcf0e12d13787293c546aba28b901.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd621001-79f2-e4f8-d6bf-a03563480ec9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem f_image_g (w : V m.succ) (hv : ∃ v, g m v = w) : f m.succ w = √ (m + 1) • w := by
  rcases hv with ⟨v, rfl⟩
  have : √ (m + 1) * √ (m + 1) = m + 1 := Real.mul_self_sqrt (mod_cast zero_le _)
  rw [f_succ_apply, g_apply]
  simp [this, f_squared, smul_add, add_smul, smul_smul, V]
  abel

/-!
### The main proof

In this section, in order to enforce that `n` is positive, we write it as
`m + 1` for some natural number `m`. -/


/-! `dim X` will denote the dimension of a subspace `X` as a cardinal. -/


local notation "dim " X:70 => Module.rank ℝ { x // x ∈ X }

/-! `fdim X` will denote the (finite) dimension of a subspace `X` as a natural number. -/


local notation "fdim" => finrank ℝ

/-! `Span S` will denote the ℝ-subspace spanned by `S`. -/


local notation "Span" => Submodule.span ℝ

/-! `Card X` will denote the cardinal of a subset of a finite type, as a
natural number. -/


local notation "Card " X:70 => #(Set.toFinset X)

/-! In the following, `⊓` and `⊔` will denote intersection and sums of ℝ-subspaces,
equipped with their subspace structures. The notations come from the general
theory of lattices, with inf and sup (also known as meet and join). -/

open Classical in
/-- If a subset `H` of `Q (m+1)` has cardinal at least `2^m + 1` then the
subspace of `V (m+1)` spanned by the corresponding basis vectors non-trivially
intersects the range of `g m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Sensitivity/Variantd338ad98796c7c961dedf5eab7bb7e9b967dcf0e12d13787293c546aba28b901.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variantd338ad98796c7c961dedf5eab7bb7e9b967dcf0e12d13787293c546aba28b901.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46f94bda08682495ae6c3f83a879fa5df3d9e82b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
