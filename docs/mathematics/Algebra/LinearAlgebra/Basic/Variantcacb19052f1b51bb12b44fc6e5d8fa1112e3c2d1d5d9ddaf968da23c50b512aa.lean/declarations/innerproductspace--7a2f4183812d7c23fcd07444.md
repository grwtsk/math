# InnerProductSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efa9c7c9067192cc71dbb1cc373b332bb1289a2ccbfa197a67ef1d7d438f5b9e",
  "kind": "class",
  "lexical_name": "InnerProductSpace",
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
  "slug": "innerproductspace--7a2f4183812d7c23fcd07444",
  "source": {
    "blob": "c6bb8e59ba6929738bdb13de5934cd78d0636b2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 107,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a2f4183812d7c23fcd07444f3081fa142446b0d1dbd5b64d56e1901837d681b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efa9c7c9067192cc71dbb1cc373b332bb1289a2ccbfa197a67ef1d7d438f5b9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class InnerProductSpace (𝕜 : Type*) (E : Type*) [IsROrC 𝕜] [NormedAddCommGroup E] extends
  NormedSpace 𝕜 E, Inner 𝕜 E where
  /-- The inner product induces the norm. -/
  norm_sq_eq_inner : ∀ x : E, ‖x‖ ^ 2 = re (inner x x)
  /-- The inner product is *hermitian*, taking the `conj` swaps the arguments. -/
  conj_symm : ∀ x y, conj (inner y x) = inner x y
  /-- The inner product is additive in the first coordinate. -/
  add_left : ∀ x y z, inner (x + y) z = inner x z + inner y z
  /-- The inner product is conjugate linear in the first coordinate. -/
  smul_left : ∀ x y r, inner (r • x) y = conj r * inner x y
#align inner_product_space InnerProductSpace

/-!
### Constructing a normed space structure from an inner product

In the definition of an inner product space, we require the existence of a norm, which is equal
(but maybe not defeq) to the square root of the scalar product. This makes it possible to put
an inner product space structure on spaces with a preexisting norm (for instance `ℝ`), with good
properties. However, sometimes, one would like to define the norm starting only from a well-behaved
scalar product. This is what we implement in this paragraph, starting from a structure
`InnerProductSpace.Core` stating that we have a nice scalar product.

Our goal here is not to develop a whole theory with all the supporting API, as this will be done
below for `InnerProductSpace`. Instead, we implement the bare minimum to go as directly as
possible to the construction of the norm and the proof of the triangular inequality.

Warning: Do not use this `Core` structure if the space you are interested in already has a norm
instance defined on it, otherwise this will create a second non-defeq norm instance!
-/


/-- A structure requiring that a scalar product is positive definite and symmetric, from which one
can construct an `InnerProductSpace` instance in `InnerProductSpace.ofCore`. -/
-- @[nolint HasNonemptyInstance] porting note: I don't think we have this linter anymore
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6bb8e59ba6929738bdb13de5934cd78d0636b2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
