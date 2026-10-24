# stabilized_jacobian_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb3f649a194aeadb7ec452012608e91424d8478e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4f94b0f-8732-dd06-21e0-0e01fe64d544",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dee54b5b-a875-bacc-8166-f0792e1c190c",
  "kind": "theorem",
  "lexical_name": "stabilized_jacobian_eq",
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
  "slug": "stabilized-jacobian-eq--7caabf988dbc29831f7d41a2",
  "source": {
    "blob": "cb3f649a194aeadb7ec452012608e91424d8478e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7caabf988dbc29831f7d41a2692b7ff2512385adba3b96a061546597ea8a159b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dee54b5b-a875-bacc-8166-f0792e1c190c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stabilized_jacobian_eq (n : ℕ) (x : StabilizedCoordinates n) :
    stabilizedJacobian n x =
      Matrix.fromBlocks (alpogeFableJacobian (x ∘ Sum.inl)) 0 0 1 := by
  ext i j
  cases i with
  | inl i =>
    cases j with
    | inl j =>
      simp [stabilizedJacobian, stabilizedPoly, alpogeFableJacobian,
        polynomialJacobian, pderiv_rename Sum.inl_injective, eval_rename]
    | inr j => simp [stabilizedJacobian, stabilizedPoly, pderiv_rename_inl_inr]
  | inr i =>
    cases j <;>
      simp [stabilizedJacobian, stabilizedPoly, Pi.single_apply, Matrix.one_apply]

/-- Identity padding retains the exact constant determinant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variantbe8f43301005981bbaebdb31730bd8d9d4c81735ec4657c2708a48911ab37811.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb3f649a194aeadb7ec452012608e91424d8478e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
