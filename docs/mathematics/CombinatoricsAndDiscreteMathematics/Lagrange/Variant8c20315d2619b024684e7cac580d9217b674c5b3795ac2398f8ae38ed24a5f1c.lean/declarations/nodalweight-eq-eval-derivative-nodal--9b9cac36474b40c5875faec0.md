# nodalWeight_eq_eval_derivative_nodal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ce7a74eea2aa244e90b856c63ff1976d2943728",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 645,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c20315d2619b024684e7cac580d9217b674c5b3795ac2398f8ae38ed24a5f1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6bee35ed-ffcc-3478-7e9f-a7f53acdf3b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:052e32fb-1336-17e4-b5f7-026e77fb24b1",
  "kind": "theorem",
  "lexical_name": "nodalWeight_eq_eval_derivative_nodal",
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
  "slug": "nodalweight-eq-eval-derivative-nodal--9b9cac36474b40c5875faec0",
  "source": {
    "blob": "1ce7a74eea2aa244e90b856c63ff1976d2943728",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 648,
    "line": 645,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variant8c20315d2619b024684e7cac580d9217b674c5b3795ac2398f8ae38ed24a5f1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b9cac36474b40c5875faec086d9cc8da4db55ff3d9ec7fcb940e7460114f1bb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variant8c20315d2619b024684e7cac580d9217b674c5b3795ac2398f8ae38ed24a5f1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:052e32fb-1336-17e4-b5f7-026e77fb24b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 645–648.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nodalWeight_eq_eval_derivative_nodal (hi : i ∈ s) :
    nodalWeight s v i = (eval (v i) (Polynomial.derivative (nodal s v)))⁻¹ := by
  rw [eval_nodal_derivative_eval_node_eq hi, nodalWeight_eq_eval_nodal_erase_inv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variant8c20315d2619b024684e7cac580d9217b674c5b3795ac2398f8ae38ed24a5f1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variant8c20315d2619b024684e7cac580d9217b674c5b3795ac2398f8ae38ed24a5f1c.lean#L645).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ce7a74eea2aa244e90b856c63ff1976d2943728` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
