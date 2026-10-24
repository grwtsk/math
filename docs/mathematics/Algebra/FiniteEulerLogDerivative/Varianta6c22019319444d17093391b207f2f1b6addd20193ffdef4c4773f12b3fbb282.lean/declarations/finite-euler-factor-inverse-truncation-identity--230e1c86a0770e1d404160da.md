# finite_euler_factor_inverse_truncation_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8981ab09fddbee7e0113223d1bbc1e32af3e423c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6c22019319444d17093391b207f2f1b6addd20193ffdef4c4773f12b3fbb282.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:727e36d3-2c1a-afc8-2c05-526c7d7fd0f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0fc5b08d-1ca8-99aa-d332-04c6616f3bf9",
  "kind": "theorem",
  "lexical_name": "finite_euler_factor_inverse_truncation_identity",
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
  "slug": "finite-euler-factor-inverse-truncation-identity--230e1c86a0770e1d404160da",
  "source": {
    "blob": "8981ab09fddbee7e0113223d1bbc1e32af3e423c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 30,
    "path": "GRWTSK/Algebra/FiniteEulerLogDerivative/Varianta6c22019319444d17093391b207f2f1b6addd20193ffdef4c4773f12b3fbb282.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:230e1c86a0770e1d404160dac6db631e5416ccde372e63a4a159fd11b5809236",
  "verification": {
    "reference": "docs/verification/Algebra/FiniteEulerLogDerivative/Varianta6c22019319444d17093391b207f2f1b6addd20193ffdef4c4773f12b3fbb282.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fc5b08d-1ca8-99aa-d332-04c6616f3bf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_euler_factor_inverse_truncation_identity
    [CommRing R]
    (x : R)
    (N : Nat) :
    (1 - x) * (∑ k ∈ Finset.range (N + 1), x ^ k)
      = 1 - x ^ (N + 1) := by
  exact finite_geometric_euler_factor_mul x N

end NumberTheory
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FiniteEulerLogDerivative/Varianta6c22019319444d17093391b207f2f1b6addd20193ffdef4c4773f12b3fbb282.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteEulerLogDerivative/Varianta6c22019319444d17093391b207f2f1b6addd20193ffdef4c4773f12b3fbb282.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8981ab09fddbee7e0113223d1bbc1e32af3e423c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
