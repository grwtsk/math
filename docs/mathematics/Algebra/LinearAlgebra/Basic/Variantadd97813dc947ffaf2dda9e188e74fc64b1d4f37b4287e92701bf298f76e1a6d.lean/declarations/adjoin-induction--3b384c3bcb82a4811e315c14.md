# adjoin_induction₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37e9e1c1-334e-4054-b10d-7b3a63f06f9a",
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
  "slug": "adjoin-induction--3b384c3bcb82a4811e315c14",
  "source": {
    "blob": "071f276b375ab0cc246e8ea18ee2b7adc982b13f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 104,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantadd97813dc947ffaf2dda9e188e74fc64b1d4f37b4287e92701bf298f76e1a6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b384c3bcb82a4811e315c141cdf3134934c77b2490285b392af527b182b3917",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantadd97813dc947ffaf2dda9e188e74fc64b1d4f37b4287e92701bf298f76e1a6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37e9e1c1-334e-4054-b10d-7b3a63f06f9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_induction₂ {p : A → A → Prop} {a b : A} (ha : a ∈ adjoin R s) (hb : b ∈ adjoin R s)
    (Hs : ∀ x ∈ s, ∀ y ∈ s, p x y) (Halg : ∀ r₁ r₂, p (algebraMap R A r₁) (algebraMap R A r₂))
    (Halg_left : ∀ (r), ∀ x ∈ s, p (algebraMap R A r) x)
    (Halg_right : ∀ (r), ∀ x ∈ s, p x (algebraMap R A r))
    (Hadd_left : ∀ x₁ x₂ y, p x₁ y → p x₂ y → p (x₁ + x₂) y)
    (Hadd_right : ∀ x y₁ y₂, p x y₁ → p x y₂ → p x (y₁ + y₂))
    (Hmul_left : ∀ x₁ x₂ y, p x₁ y → p x₂ y → p (x₁ * x₂) y)
    (Hmul_right : ∀ x y₁ y₂, p x y₁ → p x y₂ → p x (y₁ * y₂)) : p a b := by
  refine' adjoin_induction hb _ (fun r => _) (Hadd_right a) (Hmul_right a)
  · exact adjoin_induction ha Hs Halg_left
      (fun x y Hx Hy z hz => Hadd_left x y z (Hx z hz) (Hy z hz))
      fun x y Hx Hy z hz => Hmul_left x y z (Hx z hz) (Hy z hz)
  · exact adjoin_induction ha (Halg_right r) (fun r' => Halg r' r)
      (fun x y => Hadd_left x y ((algebraMap R A) r))
      fun x y => Hmul_left x y ((algebraMap R A) r)
#align algebra.adjoin_induction₂ Algebra.adjoin_induction₂

/-- The difference with `Algebra.adjoin_induction` is that this acts on the subtype. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantadd97813dc947ffaf2dda9e188e74fc64b1d4f37b4287e92701bf298f76e1a6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantadd97813dc947ffaf2dda9e188e74fc64b1d4f37b4287e92701bf298f76e1a6d.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `071f276b375ab0cc246e8ea18ee2b7adc982b13f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
