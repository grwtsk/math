# unitsMulComplexConjInv_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c7067617742aae433a648031822e84a41746b4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 337,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/536b158ef3bd7fe6cb287c66d7d46f9ad10733830c1d31c6083b6d00f6d3ce01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5834ebf-8e13-c9c0-3474-be9483f0ee91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f1f4ba66-8b63-b5d6-e3e1-d1702f98aa66",
  "kind": "theorem",
  "lexical_name": "unitsMulComplexConjInv_ker",
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
  "slug": "unitsmulcomplexconjinv-ker--7728e6f03062afebcc119418",
  "source": {
    "blob": "6c7067617742aae433a648031822e84a41746b4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 337,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/CMField/Variant536b158ef3bd7fe6cb287c66d7d46f9ad10733830c1d31c6083b6d00f6d3ce01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7728e6f03062afebcc1194188721fa9c42ccf821092d4f0011fedf6263bc67c7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/CMField/Variant536b158ef3bd7fe6cb287c66d7d46f9ad10733830c1d31c6083b6d00f6d3ce01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1f4ba66-8b63-b5d6-e3e1-d1702f98aa66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitsMulComplexConjInv_ker :
    (unitsMulComplexConjInv K).ker = realUnits K := by
  ext
  rw [MonoidHom.mem_ker, Subtype.ext_iff, unitsMulComplexConjInv_apply, OneMemClass.coe_one,
    mul_inv_eq_one, eq_comm, unitsComplexConj_eq_self_iff]

/--
The index of the image of `unitsMulComplexConjInv` divides `2`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/CMField/Variant536b158ef3bd7fe6cb287c66d7d46f9ad10733830c1d31c6083b6d00f6d3ce01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/CMField/Variant536b158ef3bd7fe6cb287c66d7d46f9ad10733830c1d31c6083b6d00f6d3ce01.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c7067617742aae433a648031822e84a41746b4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
