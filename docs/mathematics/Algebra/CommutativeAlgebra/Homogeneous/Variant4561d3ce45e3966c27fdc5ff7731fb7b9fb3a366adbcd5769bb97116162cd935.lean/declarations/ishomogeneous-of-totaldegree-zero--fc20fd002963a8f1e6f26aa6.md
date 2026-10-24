# isHomogeneous_of_totalDegree_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75de3d7aef96852cc17dee91c01310e6a9a34bba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b1e7dd6-1edd-d06b-237f-8429c9cf4250",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68508da9-6729-e1cb-2667-b4389100c428",
  "kind": "theorem",
  "lexical_name": "isHomogeneous_of_totalDegree_zero",
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
  "slug": "ishomogeneous-of-totaldegree-zero--fc20fd002963a8f1e6f26aa6",
  "source": {
    "blob": "75de3d7aef96852cc17dee91c01310e6a9a34bba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 128,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc20fd002963a8f1e6f26aa6f23687a9d1b400bcbc5516d40c511a634d8039d4",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68508da9-6729-e1cb-2667-b4389100c428`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isHomogeneous_of_totalDegree_zero {p : MvPolynomial σ R} (hp : p.totalDegree = 0) :
    IsHomogeneous p 0 := by
  erw [totalDegree, Finset.sup_eq_bot_iff] at hp
  -- we have to do this in two steps to stop simp changing bot to zero
  simp_rw [mem_support_iff] at hp
  exact hp
#align mv_polynomial.is_homogeneous_of_total_degree_zero MvPolynomial.isHomogeneous_of_totalDegree_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75de3d7aef96852cc17dee91c01310e6a9a34bba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
