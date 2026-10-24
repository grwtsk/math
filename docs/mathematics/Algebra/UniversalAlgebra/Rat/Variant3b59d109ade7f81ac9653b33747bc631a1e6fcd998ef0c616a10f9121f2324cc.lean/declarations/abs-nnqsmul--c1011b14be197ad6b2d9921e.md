# abs_nnqsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d78d18ec-1f73-7be2-50f3-067acc8ddd43",
  "kind": "lemma",
  "lexical_name": "abs_nnqsmul",
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
  "slug": "abs-nnqsmul--c1011b14be197ad6b2d9921e",
  "source": {
    "blob": "b47d8017c85881dce0570202c43bc69a3d0e36d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 33,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variant3b59d109ade7f81ac9653b33747bc631a1e6fcd998ef0c616a10f9121f2324cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1011b14be197ad6b2d9921e4bdeb828d3953c508fd895f544a9a060ba7868ed",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Rat/Variant3b59d109ade7f81ac9653b33747bc631a1e6fcd998ef0c616a10f9121f2324cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d78d18ec-1f73-7be2-50f3-067acc8ddd43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma abs_nnqsmul [DistribMulAction ℚ≥0 α] [PosSMulMono ℚ≥0 α] (q : ℚ≥0) (a : α) :
    |q • a| = q • |a| := by
  obtain ha | ha := le_total a 0 <;>
    simp [*, abs_of_nonneg, abs_of_nonpos, smul_nonneg, smul_nonpos_of_nonneg_of_nonpos]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Rat/Variant3b59d109ade7f81ac9653b33747bc631a1e6fcd998ef0c616a10f9121f2324cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Rat/Variant3b59d109ade7f81ac9653b33747bc631a1e6fcd998ef0c616a10f9121f2324cc.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b47d8017c85881dce0570202c43bc69a3d0e36d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
