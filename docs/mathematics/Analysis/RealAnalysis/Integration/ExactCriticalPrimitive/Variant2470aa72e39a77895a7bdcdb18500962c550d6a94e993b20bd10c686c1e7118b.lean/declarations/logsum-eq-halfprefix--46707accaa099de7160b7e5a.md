# logSum_eq_halfPrefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7ffdde0-2322-2a32-bcc2-18e12073e100",
  "kind": "theorem",
  "lexical_name": "logSum_eq_halfPrefix",
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
  "slug": "logsum-eq-halfprefix--46707accaa099de7160b7e5a",
  "source": {
    "blob": "b33f36ada0369bad869b5fcd805e69726c11cf15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 37,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46707accaa099de7160b7e5a73c41792cc76de349b165d8b664a3e0601c5009a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7ffdde0-2322-2a32-bcc2-18e12073e100`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logSum_eq_halfPrefix (t : ℝ) :
    mangoldtLogSum t (fun s : ℝ => 2*Real.exp (s/2)) = 2*halfPrefix t := by
  unfold mangoldtLogSum halfPrefix
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  have hn0 : 0 < (n : ℝ) := by
    exact_mod_cast (by have h := (Finset.mem_Icc.mp hn).1; omega : 0 < n)
  have hs : Real.sqrt (n : ℝ) ≠ 0 := (Real.sqrt_pos.mpr hn0).ne'
  have hsq := Real.sq_sqrt hn0.le
  dsimp only
  rw [Real.exp_half, Real.exp_log hn0]
  field_simp
  rw [hsq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ExactCriticalPrimitive/Variant2470aa72e39a77895a7bdcdb18500962c550d6a94e993b20bd10c686c1e7118b.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b33f36ada0369bad869b5fcd805e69726c11cf15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
