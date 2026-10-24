# NonUnitalRingHom.fromOpposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a209e8304cb53e0ffc7b893782a4f000768847c9779105a26b53e28bd877f38",
  "kind": "def",
  "lexical_name": "NonUnitalRingHom.fromOpposite",
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
  "slug": "nonunitalringhom-fromopposite--83c2bd3248adca1dda7ef60a",
  "source": {
    "blob": "8c09e4b55cb1851bf74dd59e6a5d818ebd631928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 165,
    "path": "GRWTSK/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83c2bd3248adca1dda7ef60a005d17c7743bd87c43e692be918bc82d49e3913a",
  "verification": {
    "reference": "docs/verification/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a209e8304cb53e0ffc7b893782a4f000768847c9779105a26b53e28bd877f38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NonUnitalRingHom.fromOpposite {R S : Type*} [NonUnitalNonAssocSemiring R]
    [NonUnitalNonAssocSemiring S] (f : R →ₙ+* S) (hf : ∀ x y, Commute (f x) (f y)) : Rᵐᵒᵖ →ₙ+* S :=
  { (f.toAddMonoidHom.comp (opAddEquiv : R ≃+ Rᵐᵒᵖ).symm.toAddMonoidHom : Rᵐᵒᵖ →+ S),
    f.toMulHom.fromOpposite hf with toFun := f ∘ MulOpposite.unop }

/-- A non-unital ring hom `R →ₙ+* S` can equivalently be viewed as a non-unital ring hom
`Rᵐᵒᵖ →+* Sᵐᵒᵖ`. This is the action of the (fully faithful) `ᵐᵒᵖ`-functor on morphisms. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c09e4b55cb1851bf74dd59e6a5d818ebd631928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
