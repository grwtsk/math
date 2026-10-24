# restrict_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c0c2a7c-9f17-74d0-872e-444925dbabc3",
  "kind": "lemma",
  "lexical_name": "restrict_comp",
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
  "slug": "restrict-comp--59b7b3686bded7a19aa62a44",
  "source": {
    "blob": "3c965a9a47ff24b9f62b7595b303fa88d4440bdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 244,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant6b6785c0bedfbd6ff76406795be93377631038bdc7472a5a3d08dedfd751a69d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59b7b3686bded7a19aa62a44c9fa256f6af9cfaa33674cfe207ae6b3941d1568",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/Variant6b6785c0bedfbd6ff76406795be93377631038bdc7472a5a3d08dedfd751a69d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c0c2a7c-9f17-74d0-872e-444925dbabc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma restrict_comp {p : Submodule R M} {p₂ : Submodule R₂ M₂} {p₃ : Submodule R₃ M₃}
    {f : M →ₛₗ[σ₁₂] M₂} {g : M₂ →ₛₗ[σ₂₃] M₃}
    (hf : MapsTo f p p₂) (hg : MapsTo g p₂ p₃) (hfg : MapsTo (g ∘ₛₗ f) p p₃ := hg.comp hf) :
    (g ∘ₛₗ f).restrict hfg = (g.restrict hg) ∘ₛₗ (f.restrict hf) :=
  rfl

-- TODO Consider defining `Algebra R (p.compatibleMaps p)`, `AlgHom` version of `LinearMap.restrict`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/Variant6b6785c0bedfbd6ff76406795be93377631038bdc7472a5a3d08dedfd751a69d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant6b6785c0bedfbd6ff76406795be93377631038bdc7472a5a3d08dedfd751a69d.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c965a9a47ff24b9f62b7595b303fa88d4440bdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
