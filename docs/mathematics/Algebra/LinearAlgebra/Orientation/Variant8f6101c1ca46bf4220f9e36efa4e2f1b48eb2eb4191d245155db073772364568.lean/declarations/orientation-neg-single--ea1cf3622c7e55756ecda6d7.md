# orientation_neg_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:860b6911-5267-d702-2c5e-3c70c7445e5f",
  "kind": "theorem",
  "lexical_name": "orientation_neg_single",
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
  "slug": "orientation-neg-single--ea1cf3622c7e55756ecda6d7",
  "source": {
    "blob": "852c25f0c9cfffc3fa2b89531626b53682b507dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 271,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea1cf3622c7e55756ecda6d75a00f19b48039f4bb3e82c9a59a74cf8008afc23",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:860b6911-5267-d702-2c5e-3c70c7445e5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orientation_neg_single [Nontrivial R] (e : Basis ι R M) (i : ι) :
    (e.unitsSMul (Function.update 1 i (-1))).orientation = -e.orientation := by
  rw [orientation_unitsSMul, Finset.prod_update_of_mem (Finset.mem_univ _)]
  simp
#align basis.orientation_neg_single Basis.orientation_neg_single

/-- Given a basis and an orientation, return a basis giving that orientation: either the original
basis, or one constructed by negating a single (arbitrary) basis vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `852c25f0c9cfffc3fa2b89531626b53682b507dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
