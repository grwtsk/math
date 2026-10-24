# mapDomainAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87d6ac1d67a4d66a86e284c767508d898cd7abe0daf8a4e2553f80d32b365c19",
  "kind": "def",
  "lexical_name": "mapDomainAlgHom",
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
  "slug": "mapdomainalghom--38e64106caa7b42271c55875",
  "source": {
    "blob": "daca25a8a58c141f59f93ccf2fcd815499c0da91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 94,
    "path": "GRWTSK/Algebra/GroupTheory/Lift/Variant3ba31168858bbe64b848269b619acd53964d717ad7a82d17b2c518e87de327b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38e64106caa7b42271c55875407a1d8e50dd56b25ad31e9c8b2ad8c465e6dbdc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lift/Variant3ba31168858bbe64b848269b619acd53964d717ad7a82d17b2c518e87de327b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87d6ac1d67a4d66a86e284c767508d898cd7abe0daf8a4e2553f80d32b365c19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapDomainAlgHom (k A : Type*) [CommSemiring k] [Semiring A] [Algebra k A] {H F : Type*}
    [Monoid H] [FunLike F G H] [MonoidHomClass F G H] [MulSemiringAction G A]
    [MulSemiringAction H A] [SMulCommClass G k A] [SMulCommClass H k A] {f : F}
    (hf : ∀ (a : G) (x : A), a • x = (f a) • x) :
    SkewMonoidAlgebra A G →ₐ[k] SkewMonoidAlgebra A H where
  __ := mapDomainRingHom hf
  commutes' := by simp [mapDomainRingHom]

@[deprecated (since := "2026-07-06")]
alias mapDomainAlgHom_apply := coeff_mapDomainAlgHom_apply

end lift

section equivMapDomain

variable [AddCommMonoid k]

/-- Given `f : G ≃ H`, we can map `l : SkewMonoidAlgebra k G` to
`equivMapDomain f l : SkewMonoidAlgebra k H` (computably) by mapping the support forwards
and the function backwards. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lift/Variant3ba31168858bbe64b848269b619acd53964d717ad7a82d17b2c518e87de327b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lift/Variant3ba31168858bbe64b848269b619acd53964d717ad7a82d17b2c518e87de327b2.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daca25a8a58c141f59f93ccf2fcd815499c0da91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
