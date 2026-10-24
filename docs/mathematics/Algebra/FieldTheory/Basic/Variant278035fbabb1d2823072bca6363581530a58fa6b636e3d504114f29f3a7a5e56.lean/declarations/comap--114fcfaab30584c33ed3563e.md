# comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b277d61cf7368cc061e5d60ede8594821c53f70ca8fd4432ecef17ff96e1c33",
  "kind": "def",
  "lexical_name": "comap",
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
  "slug": "comap--114fcfaab30584c33ed3563e",
  "source": {
    "blob": "f101ab8fece2d72d333829ede495a76ced96dd1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 423,
    "path": "GRWTSK/Algebra/FieldTheory/Basic/Variant278035fbabb1d2823072bca6363581530a58fa6b636e3d504114f29f3a7a5e56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:114fcfaab30584c33ed3563e4d726b77686f0dc370dc707d86ad94391ae20d2f",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Basic/Variant278035fbabb1d2823072bca6363581530a58fa6b636e3d504114f29f3a7a5e56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b277d61cf7368cc061e5d60ede8594821c53f70ca8fd4432ecef17ff96e1c33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comap (f : L →ₐ[K] L') (S : IntermediateField K L') : IntermediateField K L where
  __ := S.toSubalgebra.comap f
  inv_mem' x hx := show f x⁻¹ ∈ S by rw [map_inv₀ f x]; exact S.inv_mem hx

/-- Given `f : L →ₐ[K] L'`, `S.map f` is the intermediate field between `K` and `L'`
such that `x ∈ S ↔ f x ∈ S.map f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/Basic/Variant278035fbabb1d2823072bca6363581530a58fa6b636e3d504114f29f3a7a5e56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/Basic/Variant278035fbabb1d2823072bca6363581530a58fa6b636e3d504114f29f3a7a5e56.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f101ab8fece2d72d333829ede495a76ced96dd1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
