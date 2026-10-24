# frobSq_le_traceNorm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd65943f873b3960a7f3e6b510c440bf77910cd1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97e080ce5adcd2fa7715fc6ba5ab32ae153d9b967292650e64084afde5d2faba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f62414f6-3195-0e99-42aa-7b1f53723768",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4580936-c05a-9a0f-85e3-b8b0a785ff24",
  "kind": "lemma",
  "lexical_name": "frobSq_le_traceNorm_sq",
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
  "slug": "frobsq-le-tracenorm-sq--9d1629071d1eb10e8e80f703",
  "source": {
    "blob": "dd65943f873b3960a7f3e6b510c440bf77910cd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 60,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/RankOne/Variant97e080ce5adcd2fa7715fc6ba5ab32ae153d9b967292650e64084afde5d2faba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d1629071d1eb10e8e80f703b0c44108f50a56607ceac8b56f56e08404b8f2f4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/RankOne/Variant97e080ce5adcd2fa7715fc6ba5ab32ae153d9b967292650e64084afde5d2faba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4580936-c05a-9a0f-85e3-b8b0a785ff24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma frobSq_le_traceNorm_sq {E : Matrix n n ℂ} (hE : E.IsHermitian) :
    frobSq E ≤ (traceNorm hE) ^ 2 := by
  rw [frobSq_hermitian_eq_sum_sq_eigenvalues hE, traceNorm]
  calc ∑ i, hE.eigenvalues i ^ 2 = ∑ i, |hE.eigenvalues i| ^ 2 := by simp [sq_abs]
    _ ≤ (∑ i, |hE.eigenvalues i|) ^ 2 :=
      sum_sq_le_sq_sum_of_nonneg (fun i _ => abs_nonneg _)

/-- Every |λᵢ(E)| is at most ‖E‖₁ (so a trace-norm bound is also an operator-norm bound in
the shape RHLinalg.weyl_posIndexAbove_le wants). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/RankOne/Variant97e080ce5adcd2fa7715fc6ba5ab32ae153d9b967292650e64084afde5d2faba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/RankOne/Variant97e080ce5adcd2fa7715fc6ba5ab32ae153d9b967292650e64084afde5d2faba.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd65943f873b3960a7f3e6b510c440bf77910cd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
