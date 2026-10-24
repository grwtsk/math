# mk_ofAlgEquiv_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3bcc672bd83bdf455bcf785a7c57df8a01a68f0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 457,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d503f44dd4c990becfefc79af9f1d6ac369d4e50d9fa53e94b7a36856cf2c54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0cd19657-d385-ed5e-d090-f0d8522c8ff2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbb0999b-59b0-537b-8419-a9d928841117",
  "kind": "theorem",
  "lexical_name": "mk_ofAlgEquiv_symm",
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
  "slug": "mk-ofalgequiv-symm--ddab0eb2d3cc8c1e5fbb2002",
  "source": {
    "blob": "3bcc672bd83bdf455bcf785a7c57df8a01a68f0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 457,
    "path": "GRWTSK/Algebra/Algebra/Variant9d503f44dd4c990becfefc79af9f1d6ac369d4e50d9fa53e94b7a36856cf2c54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddab0eb2d3cc8c1e5fbb2002539b5635d32aaf569e7dce3c0af90d47b7f480c5",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variant9d503f44dd4c990becfefc79af9f1d6ac369d4e50d9fa53e94b7a36856cf2c54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbb0999b-59b0-537b-8419-a9d928841117`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_ofAlgEquiv_symm (n : ℕ) (x : AdicCompletion I S) :
    Ideal.Quotient.mk (I ^ n) ((ofAlgEquiv I).symm x) = evalₐ I n x := by
  simp only [evalₐ, AlgHom.coe_comp, Function.comp_apply, AlgHom.ofLinearMap_apply]
  rw [← mk_smul_top_ofAlgEquiv_symm I n x]
  simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variant9d503f44dd4c990becfefc79af9f1d6ac369d4e50d9fa53e94b7a36856cf2c54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant9d503f44dd4c990becfefc79af9f1d6ac369d4e50d9fa53e94b7a36856cf2c54.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bcc672bd83bdf455bcf785a7c57df8a01a68f0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
