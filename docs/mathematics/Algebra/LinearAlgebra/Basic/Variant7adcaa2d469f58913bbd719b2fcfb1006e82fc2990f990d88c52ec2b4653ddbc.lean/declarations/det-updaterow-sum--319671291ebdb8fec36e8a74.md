# det_updateRow_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e11b79d-424b-06df-9483-b0b6e4b496e1",
  "kind": "theorem",
  "lexical_name": "det_updateRow_sum",
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
  "slug": "det-updaterow-sum--319671291ebdb8fec36e8a74",
  "source": {
    "blob": "ab44ab346574a14fbea14c00883fe9b23e5ad556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 436,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant7adcaa2d469f58913bbd719b2fcfb1006e82fc2990f990d88c52ec2b4653ddbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:319671291ebdb8fec36e8a74d2bed04a9ab11e4b5e554b5661c2911c20e2b476",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant7adcaa2d469f58913bbd719b2fcfb1006e82fc2990f990d88c52ec2b4653ddbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e11b79d-424b-06df-9483-b0b6e4b496e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_updateRow_sum (A : Matrix n n R) (j : n) (c : n → R) :
    (A.updateRow j (∑ k, (c k) • A k)).det = (c j) • A.det := by
  convert! det_updateRow_sum_aux A (Finset.univ.erase j) (Finset.univ.notMem_erase j) c (c j)
  rw [← Finset.univ.add_sum_erase _ (Finset.mem_univ j)]

/-- If we replace a column of a matrix by a linear combination of its columns, then the determinant
is multiplied by the coefficient of that column. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant7adcaa2d469f58913bbd719b2fcfb1006e82fc2990f990d88c52ec2b4653ddbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant7adcaa2d469f58913bbd719b2fcfb1006e82fc2990f990d88c52ec2b4653ddbc.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab44ab346574a14fbea14c00883fe9b23e5ad556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
