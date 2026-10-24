# psiRelativeError_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "958b5ab8bbcc66805ea776ef5aa8fd1323fb5823",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 17,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daccbe01234f383dd5f3a69bcba98d975ca884bb9b93853de209e972694cb964.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e43b361-1da7-9e0e-cbc6-6cc317ab2424",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40db39cc-4ac9-8653-5fc1-b38946a552fa",
  "kind": "theorem",
  "lexical_name": "psiRelativeError_bound",
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
  "slug": "psirelativeerror-bound--f50e3f2f51bc06a4ac8bb0d2",
  "source": {
    "blob": "958b5ab8bbcc66805ea776ef5aa8fd1323fb5823",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 17,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variantdaccbe01234f383dd5f3a69bcba98d975ca884bb9b93853de209e972694cb964.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f50e3f2f51bc06a4ac8bb0d220b23676b55918178dcce4eff888e381ee2c1456",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variantdaccbe01234f383dd5f3a69bcba98d975ca884bb9b93853de209e972694cb964.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40db39cc-4ac9-8653-5fc1-b38946a552fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psiRelativeError_bound (t : ℝ) :
    |psiRelativeError t| ≤ Real.log 4 + 5 := by
  have hp := Chebyshev.psi_le_const_mul_self (Real.exp_pos t).le
  have hn : 0 ≤ Real.exp (-t) * Chebyshev.psi (Real.exp t) :=
    mul_nonneg (Real.exp_pos _).le (Chebyshev.psi_nonneg _)
  have hu := mul_le_mul_of_nonneg_left hp (Real.exp_pos (-t)).le
  have he : Real.exp (-t) * ((Real.log 4 + 4) * Real.exp t) = Real.log 4 + 4 := by
    calc
      _ = (Real.log 4 + 4) * (Real.exp (-t) * Real.exp t) := by ring
      _ = _ := by rw [← Real.exp_add]; simp
  rw [he] at hu
  have hl : 0 ≤ Real.log 4 := Real.log_nonneg (by norm_num)
  unfold psiRelativeError
  apply abs_le.mpr
  constructor <;> linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variantdaccbe01234f383dd5f3a69bcba98d975ca884bb9b93853de209e972694cb964.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variantdaccbe01234f383dd5f3a69bcba98d975ca884bb9b93853de209e972694cb964.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `958b5ab8bbcc66805ea776ef5aa8fd1323fb5823` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
