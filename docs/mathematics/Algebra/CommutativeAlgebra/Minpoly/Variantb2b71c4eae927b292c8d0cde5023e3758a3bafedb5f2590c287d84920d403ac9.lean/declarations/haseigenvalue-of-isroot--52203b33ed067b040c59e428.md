# hasEigenvalue_of_isRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b54eec1b612243be10d42769743e1b979f93d762",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa537802-9c68-802f-cab2-c6e637bef93e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d0509ee-8404-a8c3-996c-23cd01e68225",
  "kind": "theorem",
  "lexical_name": "hasEigenvalue_of_isRoot",
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
  "slug": "haseigenvalue-of-isroot--52203b33ed067b040c59e428",
  "source": {
    "blob": "b54eec1b612243be10d42769743e1b979f93d762",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 76,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52203b33ed067b040c59e428087684261d483f6dd81d6994eaa394382096bf52",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Minpoly/Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d0509ee-8404-a8c3-996c-23cd01e68225`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasEigenvalue_of_isRoot (h : (minpoly K f).IsRoot μ) : f.HasEigenvalue μ := by
  cases' dvd_iff_isRoot.2 h with p hp
  rw [HasEigenvalue, eigenspace]
  intro con
  cases' (LinearMap.isUnit_iff_ker_eq_bot _).2 con with u hu
  have p_ne_0 : p ≠ 0 := by
    intro con
    apply minpoly.ne_zero f.isIntegral
    rw [hp, con, mul_zero]
  have : (aeval f) p = 0 := by
    have h_aeval := minpoly.aeval K f
    revert h_aeval
    simp [hp, ← hu]
  have h_deg := minpoly.degree_le_of_ne_zero K f p_ne_0 this
  rw [hp, degree_mul, degree_X_sub_C, Polynomial.degree_eq_natDegree p_ne_0] at h_deg
  norm_cast at h_deg
  linarith
#align module.End.has_eigenvalue_of_is_root Module.End.hasEigenvalue_of_isRoot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Minpoly/Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b54eec1b612243be10d42769743e1b979f93d762` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
