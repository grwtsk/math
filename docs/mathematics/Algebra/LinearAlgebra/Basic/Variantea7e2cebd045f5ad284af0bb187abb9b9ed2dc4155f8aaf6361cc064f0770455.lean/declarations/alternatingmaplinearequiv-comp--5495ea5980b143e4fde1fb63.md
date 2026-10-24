# alternatingMapLinearEquiv_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04dda1e0-c8f2-44c7-e24a-a0f7b3ec777b",
  "kind": "lemma",
  "lexical_name": "alternatingMapLinearEquiv_comp",
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
  "slug": "alternatingmaplinearequiv-comp--5495ea5980b143e4fde1fb63",
  "source": {
    "blob": "3c056b6cb3ac65b7650d8e19264956401dcb5211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 218,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5495ea5980b143e4fde1fb63771c48bda80e10b7f833121a0a4be10a3fb4e733",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04dda1e0-c8f2-44c7-e24a-a0f7b3ec777b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma alternatingMapLinearEquiv_comp (g : N →ₗ[R] N') (f : M [⋀^Fin n]→ₗ[R] N) :
    alternatingMapLinearEquiv (g.compAlternatingMap f) = g.comp (alternatingMapLinearEquiv f) := by
  ext
  simp only [alternatingMapLinearEquiv_comp_ιMulti, LinearMap.compAlternatingMap_apply,
    LinearMap.coe_comp, comp_apply, alternatingMapLinearEquiv_apply_ιMulti]

/-! Functoriality of the exterior powers. -/

variable (n) in
/-- The linear map between `n`th exterior powers induced by a linear map between the modules. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c056b6cb3ac65b7650d8e19264956401dcb5211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
