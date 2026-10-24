# inertiaEquiv_apply_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0e11fa05f8d9117b7e1f56b3c7bc3b87cb96743",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ea742c7-c815-fc89-cde2-50f8b80e2070",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8360cf57-96ff-f854-b2d5-f91c521b8226",
  "kind": "theorem",
  "lexical_name": "inertiaEquiv_apply_smul",
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
  "slug": "inertiaequiv-apply-smul--3153394b56d0aeb19d9123c2",
  "source": {
    "blob": "b0e11fa05f8d9117b7e1f56b3c7bc3b87cb96743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 215,
    "path": "GRWTSK/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3153394b56d0aeb19d9123c2c3c189befc8b14a071755221e6288f9a22b4c411",
  "verification": {
    "reference": "docs/verification/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8360cf57-96ff-f854-b2d5-f91c521b8226`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inertiaEquiv_apply_smul {R : Type*} [Ring R] [MulSemiringAction M R] [MulSemiringAction N R]
    (I : Ideal R) (e : M ≃* N) (he : ∀ (m : M) (x : R), (e m) • x = m • x) (m : inertia M I)
    (x : R) :
    inertiaEquiv I e he m • x = m • x := by
  simp [inertiaEquiv, MulAction.subgroup_smul_def, ← he m x]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0e11fa05f8d9117b7e1f56b3c7bc3b87cb96743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
