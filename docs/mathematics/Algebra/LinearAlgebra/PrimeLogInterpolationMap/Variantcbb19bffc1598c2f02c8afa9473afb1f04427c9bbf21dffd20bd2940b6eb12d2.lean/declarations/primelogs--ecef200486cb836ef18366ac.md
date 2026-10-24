# primeLogs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36c1a11def051fbb1071f690130415d1c6df127d9df827651a135fd40cd11d12",
  "kind": "def",
  "lexical_name": "primeLogs",
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
  "slug": "primelogs--ecef200486cb836ef18366ac",
  "source": {
    "blob": "314ee81f4a1455fef5a0c2e263544c9f4de9b23c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 27,
    "path": "GRWTSK/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecef200486cb836ef18366ace17971399bb7565e82ed2e9f724ba0663637e03a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36c1a11def051fbb1071f690130415d1c6df127d9df827651a135fd40cd11d12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def primeLogs : Fin 4 → ℂ :=
  ![(Real.log 2 : ℝ), (Real.log 3 : ℝ), (Real.log 5 : ℝ), (Real.log 7 : ℝ)]

/-- The quotient map in this module, with the following exact parameterization.

def quotientMap (c : Fin 4 → ℂ) : (Fin 4 → ℂ) →ₗ[ℂ] (Fin 3 → ℂ) where toFun x j := x j.succ -
c j.succ / c 0 * x 0 map_add' x y  (implemented by the following proof).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `314ee81f4a1455fef5a0c2e263544c9f4de9b23c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
