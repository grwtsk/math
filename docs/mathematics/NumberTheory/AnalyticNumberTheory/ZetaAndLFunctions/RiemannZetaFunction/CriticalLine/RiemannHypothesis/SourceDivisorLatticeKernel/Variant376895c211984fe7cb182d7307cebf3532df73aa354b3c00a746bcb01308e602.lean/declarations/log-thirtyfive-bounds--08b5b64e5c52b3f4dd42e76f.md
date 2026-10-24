# log_thirtyfive_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0b9ed43-e787-17e1-724e-23a359035959",
  "kind": "theorem",
  "lexical_name": "log_thirtyfive_bounds",
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
  "slug": "log-thirtyfive-bounds--08b5b64e5c52b3f4dd42e76f",
  "source": {
    "blob": "0a8eae9b1ae20b5ee3923720ffa04ef22a3b8d7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 98,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeKernel/Variant376895c211984fe7cb182d7307cebf3532df73aa354b3c00a746bcb01308e602.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08b5b64e5c52b3f4dd42e76fe8f6afc456589b6e504f9d48a90b6a8562b64000",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeKernel/Variant376895c211984fe7cb182d7307cebf3532df73aa354b3c00a746bcb01308e602.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0b9ed43-e787-17e1-724e-23a359035959`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_thirtyfive_bounds : 3 < Real.log 35 ∧ Real.log 35 < 4 := by
  constructor
  · apply (Real.lt_log_iff_exp_lt (by norm_num)).mpr
    have he : Real.exp 3 = (Real.exp 1)^3 := by
      convert Real.exp_nat_mul 1 3 using 1
      norm_num
    rw [he]
    have hpow : (Real.exp 1)^3 < (3 : ℝ)^3 := by
      gcongr
      exact Real.exp_one_lt_three
    norm_num at hpow
    linarith
  · apply (Real.log_lt_iff_lt_exp (by norm_num)).mpr
    have he : Real.exp 4 = (Real.exp 1)^4 := by
      convert Real.exp_nat_mul 1 4 using 1
      norm_num
    rw [he]
    have h : (5 / 2 : ℝ) < Real.exp 1 := lt_trans (by norm_num) Real.exp_one_gt_d9
    have hpow : (5 / 2 : ℝ)^4 < (Real.exp 1)^4 := by gcongr
    norm_num at hpow
    linarith

/-- The physical reflected kernel between indices 5 and 7 is strictly positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeKernel/Variant376895c211984fe7cb182d7307cebf3532df73aa354b3c00a746bcb01308e602.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeKernel/Variant376895c211984fe7cb182d7307cebf3532df73aa354b3c00a746bcb01308e602.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a8eae9b1ae20b5ee3923720ffa04ef22a3b8d7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
