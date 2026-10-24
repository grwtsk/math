# complex_equivalent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:453f806d-f467-5ffc-c991-a870f345e795",
  "kind": "theorem",
  "lexical_name": "complex_equivalent",
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
  "slug": "complex-equivalent--6a00494ed3652221580fe830",
  "source": {
    "blob": "203c6e96a2f231b6005eb25794f13644ef69ae1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 86,
    "path": "GRWTSK/Algebra/LinearAlgebra/Complex/Variant7ba63297dc197776c8e84bd946f4d2c5a6613b59ebf44a751cbac4f76bd0df55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a00494ed3652221580fe83071734491b59ea65c32d8de35511105394d6dfeaa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Complex/Variant7ba63297dc197776c8e84bd946f4d2c5a6613b59ebf44a751cbac4f76bd0df55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:453f806d-f467-5ffc-c991-a870f345e795`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_equivalent {M : Type*} [AddCommGroup M] [Module ℂ M] [FiniteDimensional ℂ M]
    (Q₁ Q₂ : QuadraticForm ℂ M) (hQ₁ : (associated (R := ℂ) Q₁).SeparatingLeft)
    (hQ₂ : (associated (R := ℂ) Q₂).SeparatingLeft) : Equivalent Q₁ Q₂ :=
  (Q₁.equivalent_sum_squares hQ₁).trans (Q₂.equivalent_sum_squares hQ₂).symm

end QuadraticForm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Complex/Variant7ba63297dc197776c8e84bd946f4d2c5a6613b59ebf44a751cbac4f76bd0df55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Complex/Variant7ba63297dc197776c8e84bd946f4d2c5a6613b59ebf44a751cbac4f76bd0df55.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `203c6e96a2f231b6005eb25794f13644ef69ae1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
