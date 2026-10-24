# finrank_top'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e60bde59-d4ed-d102-91bd-ff0d48ace226",
  "kind": "theorem",
  "lexical_name": "finrank_top'",
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
  "slug": "finrank-top--69376b1d9bb9607a19f0eb22",
  "source": {
    "blob": "d1983de7493e8b73504501ff570010d07de15fbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 307,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant8a02e09f843375615b93676bd19612b8c63d2cce9f15adc6e12425e367eb60d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69376b1d9bb9607a19f0eb225351ac70989d0130f55e8a0b1424241e0b79ba64",
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

Occurrence: `result:e60bde59-d4ed-d102-91bd-ff0d48ace226`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem finrank_top' : finrank F (⊤ : IntermediateField F E) = finrank F E :=
  finrank_top F E

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant8a02e09f843375615b93676bd19612b8c63d2cce9f15adc6e12425e367eb60d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant8a02e09f843375615b93676bd19612b8c63d2cce9f15adc6e12425e367eb60d8.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1983de7493e8b73504501ff570010d07de15fbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
