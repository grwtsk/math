# range_eq_ker_of_leftInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acee18aa-085a-0c38-f513-4bbd8222654e",
  "kind": "lemma",
  "lexical_name": "range_eq_ker_of_leftInverse",
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
  "slug": "range-eq-ker-of-leftinverse--26bdb625d1c4888993230766",
  "source": {
    "blob": "edacd255fc4f091227e0b8beace7baead20dcae0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 226,
    "path": "GRWTSK/Algebra/LinearAlgebra/Range/Variant83c36ac745500993bb22100b9caf61c29a0b74d1383e1735781fec0b9f1619e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26bdb625d1c488899323076604c58f4a1dd31922be3aabfe926e04fd9946cf41",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Range/Variant83c36ac745500993bb22100b9caf61c29a0b74d1383e1735781fec0b9f1619e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acee18aa-085a-0c38-f513-4bbd8222654e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma range_eq_ker_of_leftInverse {M P} [AddCommGroup M] [Module R M]
    [AddCommGroup P] [Module R P] {f : M →ₗ[R] P} {g : P →ₗ[R] M}
    (h : LeftInverse g f) : f.range = ker ((f.comp g) - LinearMap.id) :=
  -- If `y = f x ∈ range f`, we have `(f ∘ g) y = f (g (f x)) = f x = y` by hypothesis `h`.
  -- Conversely, f g z - z = 0 implies z = f (g z) ∈ range f.
  le_antisymm (by rintro y ⟨x, rfl⟩; simp [h x]) (fun x hx ↦ ⟨g x, by simpa [sub_eq_zero] using hx⟩)

end

end AddCommMonoid

section Ring

variable [Ring R] [Ring R₂]
variable [AddCommGroup M] [AddCommGroup M₂]
variable [Module R M] [Module R₂ M₂]
variable {τ₁₂ : R →+* R₂}
variable {f : M →ₛₗ[τ₁₂] M₂}

open Submodule

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Range/Variant83c36ac745500993bb22100b9caf61c29a0b74d1383e1735781fec0b9f1619e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Range/Variant83c36ac745500993bb22100b9caf61c29a0b74d1383e1735781fec0b9f1619e2.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edacd255fc4f091227e0b8beace7baead20dcae0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
