# GradedAlgebra.ofAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2df7cc20f6f055858f90b7216120fb985c9e31e193a71ec16c465cb4fdc62a89",
  "kind": "abbrev",
  "lexical_name": "GradedAlgebra.ofAlgHom",
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
  "slug": "gradedalgebra-ofalghom--139a0b93d5aa2d7d2cb7da5d",
  "source": {
    "blob": "d489f80f45eb204612b62a2bc3108996b5443a18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 174,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantb7325d4f639fa59c3917a8c6c4402a58a327a2a8676eea4a558d4a95792a62d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:139a0b93d5aa2d7d2cb7da5d83df81b54f5c3ac7ef7367b55e370446edfca4b7",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantb7325d4f639fa59c3917a8c6c4402a58a327a2a8676eea4a558d4a95792a62d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2df7cc20f6f055858f90b7216120fb985c9e31e193a71ec16c465cb4fdc62a89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev GradedAlgebra.ofAlgHom [SetLike.GradedMonoid 𝒜] (decompose : A →ₐ[R] ⨁ i, 𝒜 i)
    (right_inv : (DirectSum.coeAlgHom 𝒜).comp decompose = AlgHom.id R A)
    (left_inv : ∀ i (x : 𝒜 i), decompose (x : A) = DirectSum.of (fun i => ↥(𝒜 i)) i x) :
    GradedAlgebra 𝒜 where
  decompose' := decompose
  left_inv := AlgHom.congr_fun right_inv
  right_inv := by
    suffices decompose.comp (DirectSum.coeAlgHom 𝒜) = AlgHom.id _ _ from AlgHom.congr_fun this
    ext i x : 2
    exact (decompose.congr_arg <| DirectSum.coeAlgHom_of _ _ _).trans (left_inv i x)

variable [GradedAlgebra 𝒜]

namespace DirectSum

/-- If `A` is graded by `ι` with degree `i` component `𝒜 i`, then it is isomorphic as
an algebra to a direct sum of components. -/
-- Porting note: deleted [simps] and added the corresponding lemmas by hand
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantb7325d4f639fa59c3917a8c6c4402a58a327a2a8676eea4a558d4a95792a62d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantb7325d4f639fa59c3917a8c6c4402a58a327a2a8676eea4a558d4a95792a62d3.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d489f80f45eb204612b62a2bc3108996b5443a18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
