# AddEquiv.toMultiplicativeRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:675c2386049ee0192cb2010f95347f0bbc6d230bf7371f8c8383176e5ff0bccb",
  "kind": "def",
  "lexical_name": "AddEquiv.toMultiplicativeRight",
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
  "slug": "addequiv-tomultiplicativeright--9e807f1f924fc69d74016cdb",
  "source": {
    "blob": "1e78d7eb404c092175a9c620acf5e4d2f5fc10ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 59,
    "path": "GRWTSK/Algebra/GroupTheory/TypeTags/Variantf0f2dae95683cf65675fc703a6ad45b2d1c33a6c7703868806334d51c42d7349.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e807f1f924fc69d74016cdb7aab0eb0d0f1e006f0754ba8ef1ba6621574f1d1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/TypeTags/Variantf0f2dae95683cf65675fc703a6ad45b2d1c33a6c7703868806334d51c42d7349.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:675c2386049ee0192cb2010f95347f0bbc6d230bf7371f8c8383176e5ff0bccb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddEquiv.toMultiplicativeRight [Mul G] [Add H] :
    Additive G ≃+ H ≃ (G ≃* Multiplicative H) where
  toFun f :=
  { toFun x := Multiplicative.ofAdd (f (Additive.ofMul x))
    invFun x := Additive.toMul (f.symm (Multiplicative.toAdd x))
    left_inv := f.left_inv
    right_inv := f.right_inv
    map_mul' := map_add f }
  invFun f :=
  { toFun x := Multiplicative.toAdd (f (Additive.toMul x))
    invFun x := Additive.ofMul (f.symm (Multiplicative.ofAdd x))
    left_inv := f.left_inv
    right_inv := f.right_inv
    map_add' := map_mul f }

/-- Reinterpret `G ≃* Multiplicative H` as `Additive G ≃+ H`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/TypeTags/Variantf0f2dae95683cf65675fc703a6ad45b2d1c33a6c7703868806334d51c42d7349.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/TypeTags/Variantf0f2dae95683cf65675fc703a6ad45b2d1c33a6c7703868806334d51c42d7349.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e78d7eb404c092175a9c620acf5e4d2f5fc10ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
