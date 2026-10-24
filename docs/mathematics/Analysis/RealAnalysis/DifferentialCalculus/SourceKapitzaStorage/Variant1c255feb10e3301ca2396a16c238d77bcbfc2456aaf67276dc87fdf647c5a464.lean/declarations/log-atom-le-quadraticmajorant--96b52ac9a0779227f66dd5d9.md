# log_atom_le_quadraticMajorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a55feeb9-65af-6d5b-d1dc-b9c2cf9b2d32",
  "kind": "theorem",
  "lexical_name": "log_atom_le_quadraticMajorant",
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
  "slug": "log-atom-le-quadraticmajorant--96b52ac9a0779227f66dd5d9",
  "source": {
    "blob": "bb537056757731e4111de3ee0201af57743032d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 197,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96b52ac9a0779227f66dd5d95f9bf522e4334b65db700a9c7e91f2746ac87c83",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a55feeb9-65af-6d5b-d1dc-b9c2cf9b2d32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_atom_le_quadraticMajorant {n : ℕ} (hn : 2 ≤ n) {x : ℝ}
    (hxlo : (n : ℝ) - 1 ≤ x) (hxhi : x ≤ n) :
    (Real.log n) ^ 2 / (n : ℝ) ^ (3 / 2 : ℝ) ≤ quadraticMajorant x := by
  have hn2 : (2 : ℝ) ≤ n := by exact_mod_cast hn
  have hx1 : 1 ≤ x := by linarith
  have hx0 : 0 < x := by linarith
  have hn0 : 0 < (n : ℝ) := by linarith
  have hlog : Real.log n ≤ Real.log 2 + Real.log x := by
    rw [← Real.log_mul (by norm_num : (2 : ℝ) ≠ 0) hx0.ne']
    exact Real.log_le_log hn0 (by linarith)
  have hlog0 : 0 ≤ Real.log n := Real.log_natCast_nonneg n
  have hs : (Real.log n) ^ 2 ≤ (Real.log 2 + Real.log x) ^ 2 := by
    nlinarith
  exact div_le_div₀ (sq_nonneg _) hs (Real.rpow_pos_of_pos hx0 _)
    (Real.rpow_le_rpow hx0.le hxhi (by norm_num))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant1c255feb10e3301ca2396a16c238d77bcbfc2456aaf67276dc87fdf647c5a464.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb537056757731e4111de3ee0201af57743032d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
