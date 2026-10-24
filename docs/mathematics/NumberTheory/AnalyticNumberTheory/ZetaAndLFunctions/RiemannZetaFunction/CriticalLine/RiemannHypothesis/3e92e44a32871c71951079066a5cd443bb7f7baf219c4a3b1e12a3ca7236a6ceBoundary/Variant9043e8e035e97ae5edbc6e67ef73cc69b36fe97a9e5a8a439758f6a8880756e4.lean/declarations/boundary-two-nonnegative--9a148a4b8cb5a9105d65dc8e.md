# boundary_two_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b7ae2d6-dfe6-5613-cc77-b442fca6bae6",
  "kind": "theorem",
  "lexical_name": "boundary_two_nonnegative",
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
  "slug": "boundary-two-nonnegative--9a148a4b8cb5a9105d65dc8e",
  "source": {
    "blob": "9e394b2dded12270c17772977493e034997ba4da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 93,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e92e44a32871c71951079066a5cd443bb7f7baf219c4a3b1e12a3ca7236a6ceBoundary/Variant9043e8e035e97ae5edbc6e67ef73cc69b36fe97a9e5a8a439758f6a8880756e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a148a4b8cb5a9105d65dc8eb4ff1ca226d62849c020c7119602a1f866ad5a6a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e92e44a32871c71951079066a5cd443bb7f7baf219c4a3b1e12a3ca7236a6ceBoundary/Variant9043e8e035e97ae5edbc6e67ef73cc69b36fe97a9e5a8a439758f6a8880756e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b7ae2d6-dfe6-5613-cc77-b442fca6bae6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_two_nonnegative (a : ℕ → ℝ) (ha : ∀ n, 0 ≤ a n)
    (r c : Fin 2 ↪o ℕ) (hboundary : ¬ Separated r c) :
    0 ≤ minor a r c := by
  have hgap : c 0 < r 1 := by
    exact lt_of_not_ge (fun h => hboundary ((separated_iff_last_le_first r c).mpr h))
  have hentry (i j : ℕ) : 0 ≤ entry a i j := by
    unfold entry
    split_ifs
    · exact ha _
    · exact le_rfl
  change 0 ≤ Matrix.det (Matrix.of fun i j : Fin 2 => entry a (r i) (c j))
  rw [Matrix.det_fin_two]
  simp only [Matrix.of_apply]
  rw [entry_below a hgap]
  simpa using mul_nonneg (hentry (r 0) (c 0)) (hentry (r 1) (c 1))

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e92e44a32871c71951079066a5cd443bb7f7baf219c4a3b1e12a3ca7236a6ceBoundary/Variant9043e8e035e97ae5edbc6e67ef73cc69b36fe97a9e5a8a439758f6a8880756e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e92e44a32871c71951079066a5cd443bb7f7baf219c4a3b1e12a3ca7236a6ceBoundary/Variant9043e8e035e97ae5edbc6e67ef73cc69b36fe97a9e5a8a439758f6a8880756e4.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e394b2dded12270c17772977493e034997ba4da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
