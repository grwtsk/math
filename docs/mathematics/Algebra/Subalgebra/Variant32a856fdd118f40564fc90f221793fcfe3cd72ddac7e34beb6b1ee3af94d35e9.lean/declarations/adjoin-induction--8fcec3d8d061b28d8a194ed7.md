# adjoin_induction₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3876c18c-adec-45f3-fca7-b58072182c95",
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
  "slug": "adjoin-induction--8fcec3d8d061b28d8a194ed7",
  "source": {
    "blob": "3be6966e7671d199a86294832c71fc349e4dead5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 511,
    "path": "GRWTSK/Algebra/Subalgebra/Variant32a856fdd118f40564fc90f221793fcfe3cd72ddac7e34beb6b1ee3af94d35e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fcec3d8d061b28d8a194ed75a454cbfa958a83aa0331051b3c9b654c8fbc0d7",
  "verification": {
    "reference": "docs/verification/Algebra/Subalgebra/Variant32a856fdd118f40564fc90f221793fcfe3cd72ddac7e34beb6b1ee3af94d35e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3876c18c-adec-45f3-fca7-b58072182c95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_induction₂ {s : Set A} {p : A → A → Prop} {a b : A} (ha : a ∈ adjoin R s)
    (hb : b ∈ adjoin R s) (Hs : ∀ x : A, x ∈ s → ∀ y : A, y ∈ s → p x y)
    (Halg : ∀ r₁ r₂ : R, p (algebraMap R A r₁) (algebraMap R A r₂))
    (Halg_left : ∀ (r : R) (x : A), x ∈ s → p (algebraMap R A r) x)
    (Halg_right : ∀ (r : R) (x : A), x ∈ s → p x (algebraMap R A r))
    (Hadd_left : ∀ x₁ x₂ y : A, p x₁ y → p x₂ y → p (x₁ + x₂) y)
    (Hadd_right : ∀ x y₁ y₂ : A, p x y₁ → p x y₂ → p x (y₁ + y₂))
    (Hmul_left : ∀ x₁ x₂ y : A, p x₁ y → p x₂ y → p (x₁ * x₂) y)
    (Hmul_right : ∀ x y₁ y₂ : A, p x y₁ → p x y₂ → p x (y₁ * y₂))
    (Hstar : ∀ x y : A, p x y → p (star x) (star y)) (Hstar_left : ∀ x y : A, p x y → p (star x) y)
    (Hstar_right : ∀ x y : A, p x y → p x (star y)) : p a b := by
  refine'
    Algebra.adjoin_induction₂ ha hb (fun x hx y hy => _) Halg (fun r x hx => _) (fun r x hx => _)
      Hadd_left Hadd_right Hmul_left Hmul_right
  · cases' hx with hx hx <;> cases' hy with hy hy
    · exact Hs x hx y hy
    · exact star_star y ▸ Hstar_right _ _ (Hs _ hx _ hy)
    · exact star_star x ▸ Hstar_left _ _ (Hs _ hx _ hy)
    · exact star_star x ▸ star_star y ▸ Hstar _ _ (Hs _ hx _ hy)
  · cases' hx with hx hx
    · exact Halg_left _ _ hx
    · exact star_star x ▸ Hstar_right _ _ (Halg_left r _ hx)
  · cases' hx with hx hx
    · exact Halg_right _ _ hx
    · exact star_star x ▸ Hstar_left _ _ (Halg_right r _ hx)
#align star_subalgebra.adjoin_induction₂ StarSubalgebra.adjoin_induction₂

/-- The difference with `StarSubalgebra.adjoin_induction` is that this acts on the subtype. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Subalgebra/Variant32a856fdd118f40564fc90f221793fcfe3cd72ddac7e34beb6b1ee3af94d35e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Subalgebra/Variant32a856fdd118f40564fc90f221793fcfe3cd72ddac7e34beb6b1ee3af94d35e9.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3be6966e7671d199a86294832c71fc349e4dead5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
