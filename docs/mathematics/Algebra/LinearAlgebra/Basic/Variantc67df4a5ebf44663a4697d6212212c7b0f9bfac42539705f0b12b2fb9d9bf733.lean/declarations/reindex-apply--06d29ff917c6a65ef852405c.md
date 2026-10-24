# reindex_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44dbfbd7-968b-99b6-1a03-62ac5b73598c",
  "kind": "theorem",
  "lexical_name": "reindex_apply",
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
  "slug": "reindex-apply--06d29ff917c6a65ef852405c",
  "source": {
    "blob": "489c189806ace4c402c1fdd0333f53e4c5d0c139",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2598,
    "line": 2593,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc67df4a5ebf44663a4697d6212212c7b0f9bfac42539705f0b12b2fb9d9bf733.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06d29ff917c6a65ef852405c39fc657c57ee51310b14e85c507e27ec8cbea62b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc67df4a5ebf44663a4697d6212212c7b0f9bfac42539705f0b12b2fb9d9bf733.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44dbfbd7-968b-99b6-1a03-62ac5b73598c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2593–2598.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reindex_apply (eₘ : m ≃ l) (eₙ : n ≃ o) (M : Matrix m n α) :
    reindex eₘ eₙ M = M.submatrix eₘ.symm eₙ.symm :=
  rfl
#align matrix.reindex_apply Matrix.reindex_apply

-- @[simp] -- Porting note: simp can prove this
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc67df4a5ebf44663a4697d6212212c7b0f9bfac42539705f0b12b2fb9d9bf733.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc67df4a5ebf44663a4697d6212212c7b0f9bfac42539705f0b12b2fb9d9bf733.lean#L2593).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `489c189806ace4c402c1fdd0333f53e4c5d0c139` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
