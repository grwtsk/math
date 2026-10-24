# eval_charpoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe43b8ae-ad75-3e8f-2741-47b6fff751ff",
  "kind": "theorem",
  "lexical_name": "eval_charpoly",
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
  "slug": "eval-charpoly--1674e9a177f84e08a44e8d72",
  "source": {
    "blob": "76b609b58c5df1f9e6f04b48f42b50f85a435dc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 138,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variante37203fa2f4201fd7900628cf66f499769c0c65e70408407d40c97c7ea337284.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1674e9a177f84e08a44e8d72df6521ed58c564aba8b864a3aa57c6d6b3674006",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variante37203fa2f4201fd7900628cf66f499769c0c65e70408407d40c97c7ea337284.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe43b8ae-ad75-3e8f-2741-47b6fff751ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_charpoly (M : Matrix m m R) (t : R) :
    M.charpoly.eval t = (Matrix.scalar _ t - M).det := by
  rw [Matrix.charpoly, ← Polynomial.coe_evalRingHom, RingHom.map_det, Matrix.charmatrix]
  congr
  ext i j
  obtain rfl | hij := eq_or_ne i j <;> simp [*]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variante37203fa2f4201fd7900628cf66f499769c0c65e70408407d40c97c7ea337284.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variante37203fa2f4201fd7900628cf66f499769c0c65e70408407d40c97c7ea337284.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76b609b58c5df1f9e6f04b48f42b50f85a435dc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
