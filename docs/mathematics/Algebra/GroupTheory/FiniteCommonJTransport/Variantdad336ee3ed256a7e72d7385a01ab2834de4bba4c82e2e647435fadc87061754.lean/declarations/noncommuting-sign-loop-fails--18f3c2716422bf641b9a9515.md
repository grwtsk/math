# noncommuting_sign_loop_fails

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42c1b59839faa092c70c89a80fa234526e03a483",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 312,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/dad336ee3ed256a7e72d7385a01ab2834de4bba4c82e2e647435fadc87061754.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9608210f-f289-c1c1-78e3-bcd6ff1cfc11",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be393e43-1075-45b4-1160-6d963e93fc3c",
  "kind": "theorem",
  "lexical_name": "noncommuting_sign_loop_fails",
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
  "slug": "noncommuting-sign-loop-fails--18f3c2716422bf641b9a9515",
  "source": {
    "blob": "42c1b59839faa092c70c89a80fa234526e03a483",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 312,
    "path": "GRWTSK/Algebra/GroupTheory/FiniteCommonJTransport/Variantdad336ee3ed256a7e72d7385a01ab2834de4bba4c82e2e647435fadc87061754.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18f3c2716422bf641b9a9515a010ad1762c70e9c90cf79c2fa4f48d13b60b848",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FiniteCommonJTransport/Variantdad336ee3ed256a7e72d7385a01ab2834de4bba4c82e2e647435fadc87061754.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be393e43-1075-45b4-1160-6d963e93fc3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noncommuting_sign_loop_fails :
    hostileSign * (hostileLower * hostileUpper) * hostileSign⁻¹ ≠
      (hostileLower * hostileUpper)⁻¹ := by
  intro h
  have he := congrArg (fun g : (Matrix (Fin 2) (Fin 2) ℚ)ˣ => (g : Matrix (Fin 2) (Fin 2) ℚ) 0 0) h
  norm_num [mul_inv_rev, hostileSign, hostileUpper, hostileLower,
    Matrix.mul_apply, Fin.sum_univ_two] at he

/-- The same two edges have a checked, explicit noncommutativity obstruction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FiniteCommonJTransport/Variantdad336ee3ed256a7e72d7385a01ab2834de4bba4c82e2e647435fadc87061754.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FiniteCommonJTransport/Variantdad336ee3ed256a7e72d7385a01ab2834de4bba4c82e2e647435fadc87061754.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42c1b59839faa092c70c89a80fa234526e03a483` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
