# lie_of_of_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:812be8a7-7c13-da50-2f42-61d78232d382",
  "kind": "theorem",
  "lexical_name": "lie_of_of_eq",
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
  "slug": "lie-of-of-eq--8932d499d837452d3fca0cb4",
  "source": {
    "blob": "5a3d5d265eec9c3c06f2b9c2765bb2ca526833d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 179,
    "path": "GRWTSK/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8932d499d837452d3fca0cb48876bcfa64cb2d4fdd833c6cd95fff8f5e2fe15e",
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

Occurrence: `result:812be8a7-7c13-da50-2f42-61d78232d382`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lie_of_of_eq [DecidableEq ι] {i j : ι} (hij : j = i) (x : L i) (y : L j) :
    ⁅of L i x, of L j y⁆ = of L i ⁅x, hij.recOn y⁆ := by
  have : of L j y = of L i (hij.recOn y) := Eq.rec (Eq.refl _) hij
  rw [this, ← lieAlgebraOf_apply R ι L i ⁅x, hij.recOn y⁆, LieHom.map_lie, lieAlgebraOf_apply,
    lieAlgebraOf_apply]
#align direct_sum.lie_of_of_eq DirectSum.lie_of_of_eq

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a3d5d265eec9c3c06f2b9c2765bb2ca526833d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
