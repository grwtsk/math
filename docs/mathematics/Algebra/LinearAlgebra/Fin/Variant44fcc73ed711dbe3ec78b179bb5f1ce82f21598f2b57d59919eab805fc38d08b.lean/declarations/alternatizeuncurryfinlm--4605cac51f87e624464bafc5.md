# alternatizeUncurryFinLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29165821d0c9dd99eef514bff5f6ac42b2de4e5f94047cd7905da85c0072f325",
  "kind": "def",
  "lexical_name": "alternatizeUncurryFinLM",
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
  "slug": "alternatizeuncurryfinlm--4605cac51f87e624464bafc5",
  "source": {
    "blob": "648ad6b0fe6f7f5b0212ae387a3c934ad12fbb99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 150,
    "path": "GRWTSK/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4605cac51f87e624464bafc585cdfd1c2daecdd373aa6b905a1ec8f1f50bc090",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29165821d0c9dd99eef514bff5f6ac42b2de4e5f94047cd7905da85c0072f325`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def alternatizeUncurryFinLM : (M →ₗ[R] M [⋀^Fin n]→ₗ[R] N) →ₗ[R] M [⋀^Fin (n + 1)]→ₗ[R] N where
  toFun := alternatizeUncurryFin
  map_add' := alternatizeUncurryFin_add
  map_smul' := alternatizeUncurryFin_smul

/-- If `f` is a bilinear map taking values in the space of alternating maps,
then evaluation of the twice uncurried `f` on a tuple of vectors `v`
can be represented as a sum of

$$
f(v_i, v_j; v_0, \dots, \hat{v_i}, \dots, \hat{v_j}-) -
f(v_j, v_i; v_0, \dots, \hat{v_i}, \dots, \hat{v_j}-)
$$

over all `(i j : Fin (n + 2))`, `i < j`, taken with appropriate signs.
Here $\hat{v_i}$ and $\hat{v_j}$ mean that these vectors are removed from the tuple.

We use pairs of `i j : Fin (n + 1)`, `i ≤ j`,
to encode pairs `(i.castSucc : Fin (n + 2), j.succ : Fin (n + 2))`,
so the power of `-1` is off by one compared to the informal texts.

In particular, if `f` is symmetric in the first two arguments,
then the resulting alternating map is zero,
see `alternatizeUncurryFin_alternatizeUncurryFinLM_comp_of_symmetric` below.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `648ad6b0fe6f7f5b0212ae387a3c934ad12fbb99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
