# mobiusPerron_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4512f2e-dc30-e3fd-61a8-d0ab94df42cd",
  "kind": "theorem",
  "lexical_name": "mobiusPerron_integrable",
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
  "slug": "mobiusperron-integrable--98f38e15af81b01f10eeed3e",
  "source": {
    "blob": "3a4f6174aa7292c2518c10a4b29ce5d659d6e661",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 105,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98f38e15af81b01f10eeed3e8f9865fe42e8b96696d59250abd748f8401a3368",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4512f2e-dc30-e3fd-61a8-d0ab94df42cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mobiusPerron_integrable (c x : ℝ) (hc : 0 < c) (hx : 0 < x) :
    Integrable (fun t : ℝ => (x : ℂ) ^ ((c : ℂ) + (t : ℂ) * Complex.I) /
      (((c : ℂ) + (t : ℂ) * Complex.I) ^ 2 *
        riemannZeta (1 + (c : ℂ) + (t : ℂ) * Complex.I))) := by
  have hs : Summable (LSeries.term (fun m => (ArithmeticFunction.moebius m : ℂ))
      (1 + (c : ℂ))) :=
    ArithmeticFunction.LSeriesSummable_moebius_iff.mpr (by simpa using hc)
  have hm : Measurable (fun t : ℝ => ∑' n : ℕ, perronTerm c x n t) := by
    apply Measurable.tsum
    intro n
    unfold perronTerm perronIntegrand LSeries.term
    split_ifs <;> fun_prop
  have hi := ((perronIntegrand_integrable c x hc hx).norm.const_mul
    (∑' n : ℕ, ‖LSeries.term (fun m => (ArithmeticFunction.moebius m : ℂ))
      (1 + (c : ℂ)) n‖)).mono' hm.aestronglyMeasurable
  have ht : Integrable (fun t : ℝ => ∑' n : ℕ, perronTerm c x n t) := by
    apply hi
    filter_upwards [] with t
    have hnorm : Summable (fun n : ℕ => ‖perronTerm c x n t‖) := by
      simpa only [perronTerm_norm] using hs.norm.mul_right ‖perronIntegrand c x t‖
    simpa only [perronTerm_norm, tsum_mul_right] using
        norm_tsum_le_tsum_norm hnorm
  exact ht.congr (Eventually.of_forall (perronTerm_tsum c x hc))

/-- Each positive-index signed term evaluates to the exact logarithmic strict cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a4f6174aa7292c2518c10a4b29ce5d659d6e661` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
