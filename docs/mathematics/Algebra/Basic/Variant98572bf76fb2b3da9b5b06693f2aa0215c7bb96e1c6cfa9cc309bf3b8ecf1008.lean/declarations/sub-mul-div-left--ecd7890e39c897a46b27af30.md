# sub_mul_div_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0dd6077b-ce06-ed99-aa34-aaa27322b5d6",
  "kind": "theorem",
  "lexical_name": "sub_mul_div_left",
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
  "slug": "sub-mul-div-left--ecd7890e39c897a46b27af30",
  "source": {
    "blob": "97d61caa997e3ccd59facebbf086d592a268dbe4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 350,
    "path": "GRWTSK/Algebra/Basic/Variant98572bf76fb2b3da9b5b06693f2aa0215c7bb96e1c6cfa9cc309bf3b8ecf1008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecd7890e39c897a46b27af3090075d3d26590015efeda9b1df937e86f7c20724",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant98572bf76fb2b3da9b5b06693f2aa0215c7bb96e1c6cfa9cc309bf3b8ecf1008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dd6077b-ce06-ed99-aa34-aaa27322b5d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sub_mul_div_left (x y z : R) (h1 : y ≠ 0) (h2 : y ∣ x) : (x - y * z) / y = x / y - z := by
  rw [eq_comm]
  apply eq_div_of_mul_eq_right h1
  rw [mul_sub, EuclideanDomain.mul_div_cancel' h1 h2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant98572bf76fb2b3da9b5b06693f2aa0215c7bb96e1c6cfa9cc309bf3b8ecf1008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant98572bf76fb2b3da9b5b06693f2aa0215c7bb96e1c6cfa9cc309bf3b8ecf1008.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97d61caa997e3ccd59facebbf086d592a268dbe4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
