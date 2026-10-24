# lie_of_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10a7a22c-1593-56cc-6d6e-0654fb49d9ec",
  "kind": "theorem",
  "lexical_name": "lie_of_of_ne",
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
  "slug": "lie-of-of-ne--9d7f619ae83ba7283671a7ec",
  "source": {
    "blob": "5a3d5d265eec9c3c06f2b9c2765bb2ca526833d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 168,
    "path": "GRWTSK/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d7f619ae83ba7283671a7ecbc8958e7030d123b9be44ecbc3a9055b35284ca1",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10a7a22c-1593-56cc-6d6e-0654fb49d9ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lie_of_of_ne [DecidableEq ι] {i j : ι} (hij : j ≠ i) (x : L i) (y : L j) :
    ⁅of L i x, of L j y⁆ = 0 := by
  apply lieAlgebra_ext R ι L; intro k
  rw [LieHom.map_lie]
  simp only [of, singleAddHom, AddMonoidHom.coe_mk, ZeroHom.coe_mk, lieAlgebraComponent_apply,
    component, lapply, LinearMap.coe_mk, AddHom.coe_mk, single_apply, LieHom.map_zero]
  by_cases hik : i = k
  · simp only [dif_neg, not_false_iff, lie_zero, hik.symm, hij]
  · simp only [dif_neg, not_false_iff, zero_lie, hik]
#align direct_sum.lie_of_of_ne DirectSum.lie_of_of_ne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a3d5d265eec9c3c06f2b9c2765bb2ca526833d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
