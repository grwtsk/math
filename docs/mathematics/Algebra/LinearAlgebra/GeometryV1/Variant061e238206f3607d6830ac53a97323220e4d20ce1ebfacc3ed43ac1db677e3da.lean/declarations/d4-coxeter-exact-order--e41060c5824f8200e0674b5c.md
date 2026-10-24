# d4_coxeter_exact_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52ca3a1e6f05b37729821e425c1db72a01302135",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/061e238206f3607d6830ac53a97323220e4d20ce1ebfacc3ed43ac1db677e3da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10365bec-d833-3001-6c5b-2c30cd19c1c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08a00e0b-8139-9fd9-15bc-4593e67a59a3",
  "kind": "theorem",
  "lexical_name": "d4_coxeter_exact_order",
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
  "slug": "d4-coxeter-exact-order--e41060c5824f8200e0674b5c",
  "source": {
    "blob": "52ca3a1e6f05b37729821e425c1db72a01302135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 62,
    "path": "GRWTSK/Algebra/LinearAlgebra/GeometryV1/Variant061e238206f3607d6830ac53a97323220e4d20ce1ebfacc3ed43ac1db677e3da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e41060c5824f8200e0674b5ca533fb68735caecffa7975853388f47af21d500f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GeometryV1/Variant061e238206f3607d6830ac53a97323220e4d20ce1ebfacc3ed43ac1db677e3da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08a00e0b-8139-9fd9-15bc-4593e67a59a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem d4_coxeter_exact_order : d4Coxeter ^ 6 = 1 ∧
    ∀ k : Fin 5, d4Coxeter ^ (k.val+1) ≠ 1 := by
  constructor
  · rw [d4_pow_certificate 6 (by omega)]
    decide +kernel
  · intro k
    rw [d4_pow_certificate (k.val+1) (by omega)]
    have h : ∀ j : Fin 5, d4Powers[j.val+1]! ≠ 1 := by decide +kernel
    exact h k

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GeometryV1/Variant061e238206f3607d6830ac53a97323220e4d20ce1ebfacc3ed43ac1db677e3da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GeometryV1/Variant061e238206f3607d6830ac53a97323220e4d20ce1ebfacc3ed43ac1db677e3da.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52ca3a1e6f05b37729821e425c1db72a01302135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
