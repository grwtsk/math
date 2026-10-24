# _root_.GRWTSK.Algebra.CommutativeAlgebra.RestrictScalarsLeIff.Variantab3fd8da80c42b91468858c327d42c26243a8014e851478b234009ef46e15c5d.minpoly.degree_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:112b5a43-457f-a08b-94b7-92fc4652495a",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.RestrictScalarsLeIff.Variantab3fd8da80c42b91468858c327d42c26243a8014e851478b234009ef46e15c5d.minpoly.degree_le",
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
  "slug": "root-grwtsk-algebra-commutativealgebra-restrictscalarsleiff-variantab3fd--a087fa26ebcea7a532b1bb87",
  "source": {
    "blob": "d1983de7493e8b73504501ff570010d07de15fbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 528,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant8a02e09f843375615b93676bd19612b8c63d2cce9f15adc6e12425e367eb60d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a087fa26ebcea7a532b1bb87c74cc0693e2e58450d167f1be37baf03de341c9a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant8a02e09f843375615b93676bd19612b8c63d2cce9f15adc6e12425e367eb60d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:112b5a43-457f-a08b-94b7-92fc4652495a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.CommutativeAlgebra.RestrictScalarsLeIff.Variantab3fd8da80c42b91468858c327d42c26243a8014e851478b234009ef46e15c5d.minpoly.degree_le (x : L) [FiniteDimensional K L] :
    (minpoly K x).degree ≤ finrank K L :=
  degree_le_of_natDegree_le (minpoly.natDegree_le x)

/-- If `x : L` is an integral element in a field extension `L` over `K`, then the degree of the
  minimal polynomial of `x` over `K` divides `[L : K]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant8a02e09f843375615b93676bd19612b8c63d2cce9f15adc6e12425e367eb60d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant8a02e09f843375615b93676bd19612b8c63d2cce9f15adc6e12425e367eb60d8.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1983de7493e8b73504501ff570010d07de15fbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
