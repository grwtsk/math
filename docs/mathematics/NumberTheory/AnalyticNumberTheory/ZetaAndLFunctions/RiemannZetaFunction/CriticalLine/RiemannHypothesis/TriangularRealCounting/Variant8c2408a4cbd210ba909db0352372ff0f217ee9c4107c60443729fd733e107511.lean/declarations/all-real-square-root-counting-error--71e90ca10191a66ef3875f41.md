# all_real_square_root_counting_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:986e9e89-3f8d-0752-1ed0-a966953020d9",
  "kind": "theorem",
  "lexical_name": "all_real_square_root_counting_error",
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
  "slug": "all-real-square-root-counting-error--71e90ca10191a66ef3875f41",
  "source": {
    "blob": "0989bc531deb72fadb6e8d7ec7b695bc39096c13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularRealCounting/Variant8c2408a4cbd210ba909db0352372ff0f217ee9c4107c60443729fd733e107511.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71e90ca10191a66ef3875f41a397ae209b25107329e5f6d4b8e9bc300975d824",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularRealCounting/Variant8c2408a4cbd210ba909db0352372ff0f217ee9c4107c60443729fd733e107511.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:986e9e89-3f8d-0752-1ed0-a966953020d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_real_square_root_counting_error {M : ℕ} (hM : 2 ≤ M) {a x : ℝ}
    (ha : 0 ≤ a) (hx : 1 ≤ x) :
    |count M a x - x| ≤ (a + 1) * Real.sqrt x := by
  have h := all_real_counting_bracket hM ha hx
  have hs : 1 ≤ Real.sqrt x := by
    simpa only [Real.sqrt_one] using Real.sqrt_le_sqrt hx
  exact abs_le.mpr ⟨by nlinarith, by nlinarith⟩

end
end GRWTSK.RiemannHypothesis.Conversation.TriangularRealCounting
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularRealCounting/Variant8c2408a4cbd210ba909db0352372ff0f217ee9c4107c60443729fd733e107511.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularRealCounting/Variant8c2408a4cbd210ba909db0352372ff0f217ee9c4107c60443729fd733e107511.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0989bc531deb72fadb6e8d7ec7b695bc39096c13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
