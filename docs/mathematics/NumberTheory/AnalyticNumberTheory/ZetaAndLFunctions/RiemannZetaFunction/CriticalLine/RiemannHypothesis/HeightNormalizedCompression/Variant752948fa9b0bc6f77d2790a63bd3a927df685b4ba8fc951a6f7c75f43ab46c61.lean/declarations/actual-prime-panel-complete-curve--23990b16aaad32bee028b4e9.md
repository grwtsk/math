# actual_prime_panel_complete_curve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1c4627e-549d-f022-5df1-b1321370b56f",
  "kind": "theorem",
  "lexical_name": "actual_prime_panel_complete_curve",
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
  "slug": "actual-prime-panel-complete-curve--23990b16aaad32bee028b4e9",
  "source": {
    "blob": "4c123958207c7763c9e7364878874972c2bd6ab5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 103,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HeightNormalizedCompression/Variant752948fa9b0bc6f77d2790a63bd3a927df685b4ba8fc951a6f7c75f43ab46c61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23990b16aaad32bee028b4e97f37fe23cc5530696e6fdb7bedb43476ef7eb284",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HeightNormalizedCompression/Variant752948fa9b0bc6f77d2790a63bd3a927df685b4ba8fc951a6f7c75f43ab46c61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1c4627e-549d-f022-5df1-b1321370b56f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_prime_panel_complete_curve {N : ℕ} {s : Finset ℕ} {H p : ℝ}
    (hN : 1 ≤ N) (hs : s.Nonempty) (hH : 0 < H) (hp : 1 ≤ p)
    (hpanel : ∀ j ∈ s, 0 ≤ NativeSuperlevelConsumer.storage N j ∧
      NativeSuperlevelConsumer.storage N j ≤ H)
    (hE : 0 < moment s (fun j => cellClock (N + j) (N + j + 1 : ℕ))
      (NativeSuperlevelConsumer.storage N) p) :
    compressionFactor s (fun j => cellClock (N + j) (N + j + 1 : ℕ))
      (NativeSuperlevelConsumer.storage N) p =
      ((∫⁻ t in Set.Ioc (0 : ℝ) 1,
        normalizedCurve s (fun j => cellClock (N + j) (N + j + 1 : ℕ))
          (NativeSuperlevelConsumer.profile N s H) t).toReal) ^ p /
        (p * (∫⁻ t in Set.Ioc (0 : ℝ) 1,
          normalizedCurve s (fun j => cellClock (N + j) (N + j + 1 : ℕ))
            (NativeSuperlevelConsumer.profile N s H) t * ENNReal.ofReal (t ^ (p - 1))).toReal) := by
  exact positive_panel_complete_curve hs (fun j => cellClock_pos (by omega : 1 ≤ N + j))
    hH hp hpanel (measurable_of_countable _) hE

end
end GRWTSK.RiemannHypothesis.Conversation.HeightNormalizedCompression
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HeightNormalizedCompression/Variant752948fa9b0bc6f77d2790a63bd3a927df685b4ba8fc951a6f7c75f43ab46c61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HeightNormalizedCompression/Variant752948fa9b0bc6f77d2790a63bd3a927df685b4ba8fc951a6f7c75f43ab46c61.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c123958207c7763c9e7364878874972c2bd6ab5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
