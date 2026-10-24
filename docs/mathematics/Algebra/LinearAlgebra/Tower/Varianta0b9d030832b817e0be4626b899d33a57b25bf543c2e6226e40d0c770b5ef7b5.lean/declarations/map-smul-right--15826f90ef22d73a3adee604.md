# map_smul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b09363a705b029ed1fc095ddc8f85f133e5f7099",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0b9d030832b817e0be4626b899d33a57b25bf543c2e6226e40d0c770b5ef7b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b97ba47-58bc-f435-3d4f-edaf88ba4baf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bdcc7225-0df9-d8b1-0c18-4626d7e894d6",
  "kind": "theorem",
  "lexical_name": "map_smul_right",
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
  "slug": "map-smul-right--15826f90ef22d73a3adee604",
  "source": {
    "blob": "b09363a705b029ed1fc095ddc8f85f133e5f7099",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 219,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tower/Varianta0b9d030832b817e0be4626b899d33a57b25bf543c2e6226e40d0c770b5ef7b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15826f90ef22d73a3adee6047369a00695b908847c4244e716a340da14295a70",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tower/Varianta0b9d030832b817e0be4626b899d33a57b25bf543c2e6226e40d0c770b5ef7b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdcc7225-0df9-d8b1-0c18-4626d7e894d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_smul_right (r : R) (f : M →ₗ[A] P) (g : N →ₗ[R] Q) : map f (r • g) = r • map f g := by
  ext
  simp_rw [curry_apply, TensorProduct.curry_apply, restrictScalars_apply, smul_apply, map_tmul,
    smul_apply, tmul_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tower/Varianta0b9d030832b817e0be4626b899d33a57b25bf543c2e6226e40d0c770b5ef7b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tower/Varianta0b9d030832b817e0be4626b899d33a57b25bf543c2e6226e40d0c770b5ef7b5.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b09363a705b029ed1fc095ddc8f85f133e5f7099` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
