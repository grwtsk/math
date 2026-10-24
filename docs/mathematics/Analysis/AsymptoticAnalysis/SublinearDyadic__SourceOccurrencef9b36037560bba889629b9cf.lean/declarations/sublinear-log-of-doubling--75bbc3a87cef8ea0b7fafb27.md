# sublinear_log_of_doubling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:953ffeaf-ea12-a5e4-a7f3-435427ab22f0",
  "kind": "theorem",
  "lexical_name": "sublinear_log_of_doubling",
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
  "slug": "sublinear-log-of-doubling--75bbc3a87cef8ea0b7fafb27",
  "source": {
    "blob": "c77c4e684f065879f2bb66206f950e3706d448d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 166,
    "path": "GRWTSK/Analysis/Asymptotics/SublinearDyadic.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75bbc3a87cef8ea0b7fafb276195226b28669279818b457710358783d7c9d9e1",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrencef9b36037560bba889629b9cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:953ffeaf-ea12-a5e4-a7f3-435427ab22f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sublinear_log_of_doubling (A β : ℕ → ℝ)
    (hA : ∀ n, 1 ≤ A n) (hmono : Monotone A) (hβ : ∀ n, 0 ≤ β n)
    (step : ∀ n, 1 ≤ n → A (2*n) ≤ (1+β n)*A n)
    (hbudget : UpperSublinear (fun n => Real.log (1+β n))) :
    UpperSublinear (fun n => Real.log (A n)) := by
  apply upperSublinear_of_doubling (fun n => Real.log (A n))
    (fun n => Real.log (1+β n))
  · intro n; exact Real.log_nonneg (hA n)
  · intro n m hnm
    exact Real.log_le_log (lt_of_lt_of_le (by norm_num) (hA n)) (hmono hnm)
  · intro n; exact Real.log_nonneg (by linarith [hβ n])
  · exact hbudget
  · intro n hn
    have hl := Real.log_le_log
      (lt_of_lt_of_le (by norm_num) (hA (2*n))) (step n hn)
    rw [Real.log_mul (ne_of_gt (by linarith [hβ n]))
      (ne_of_gt (lt_of_lt_of_le (by norm_num) (hA n)))] at hl
    linarith

end GRWTSK.Analysis.SublinearDyadic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrencef9b36037560bba889629b9cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/SublinearDyadic.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c77c4e684f065879f2bb66206f950e3706d448d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
