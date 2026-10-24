# scalarFiber_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65372425-33a3-32e9-571d-bd9fda20bd2d",
  "kind": "theorem",
  "lexical_name": "scalarFiber_sum",
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
  "slug": "scalarfiber-sum--71ca4abf1e607ed0e3a2971f",
  "source": {
    "blob": "153bbf71a062ffe59b7707418372471eef0726a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 182,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71ca4abf1e607ed0e3a2971f293615c567bc0018c5989bcb0ea0ece7f2d1c909",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65372425-33a3-32e9-571d-bd9fda20bd2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scalarFiber_sum :
    (∑ character : AddChar G ℂ, scalarFiber character) = 2*(Fintype.card G : ℝ)-3 := by
  classical
  have he (character : AddChar G ℂ) : scalarFiber character =
      2-3*(if character=0 then 1 else 0) := by
    unfold scalarFiber
    split_ifs <;> norm_num
  simp only [he,Finset.sum_sub_distrib,← Finset.mul_sum]
  simp [AddChar.card_eq,nsmul_eq_mul]
  ring

/-- The hostile family requires a genuinely nontrivial finite group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `153bbf71a062ffe59b7707418372471eef0726a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
