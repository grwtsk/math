# submatrix_updateColumn_succAbove

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73b4d4c23ec30ba28869e7effe417e19a2fd1f48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 395,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34741e97-7f89-10c7-aa10-2bfb1b2ed1e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9dc6b7e4-b62f-4453-9f43-aa0b591716c4",
  "kind": "theorem",
  "lexical_name": "submatrix_updateColumn_succAbove",
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
  "slug": "submatrix-updatecolumn-succabove--82d1b85bcf6f437d5e817428",
  "source": {
    "blob": "73b4d4c23ec30ba28869e7effe417e19a2fd1f48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 395,
    "path": "GRWTSK/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82d1b85bcf6f437d5e817428ad863c3f1514f1dbc1b76f4ed98d6cb31a7fd36d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dc6b7e4-b62f-4453-9f43-aa0b591716c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem submatrix_updateColumn_succAbove (A : Matrix m' (Fin n.succ) α) (v : m' → α) (f : o' → m')
    (i : Fin n.succ) : (A.updateColumn i v).submatrix f i.succAbove = A.submatrix f i.succAbove :=
  ext fun _r s => updateColumn_ne (Fin.succAbove_ne i s)
#align matrix.submatrix_update_column_succ_above Matrix.submatrix_updateColumn_succAbove

end Submatrix

section Vec2AndVec3

section One

variable [Zero α] [One α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73b4d4c23ec30ba28869e7effe417e19a2fd1f48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
