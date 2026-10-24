# firstSeries_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffbd9565-66f5-2a85-85a2-4ffa22dca6a9",
  "kind": "theorem",
  "lexical_name": "firstSeries_hasDerivAt",
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
  "slug": "firstseries-hasderivat--b53dec6ad609ca38d3ccb8b5",
  "source": {
    "blob": "65a2a0a9556705a9b6cadea17e53e93624a0191a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 172,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b53dec6ad609ca38d3ccb8b579c8d253d29fe1a723196517e07d1e30fdd2e38d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffbd9565-66f5-2a85-85a2-4ffa22dca6a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstSeries_hasDerivAt {x : ℝ} (hx : -2 < x) :
    HasDerivAt firstSeries (secondSeries x) x := by
  let l := (x - 2) / 2
  let u := x + 1
  have hl : -2 < l := by dsimp [l]; linarith
  have hmem : x ∈ Ioo l u := by dsimp [l, u]; constructor <;> linarith
  exact hasDerivAt_tsum_of_isPreconnected
    (weight_summable.mul_left (1 / (lowerCoefficient l) ^ 2)) isOpen_Ioo
    (convex_Ioo l u).isPreconnected
    (fun n y hy ↦ firstTerm_hasDerivAt (lt_trans hl hy.1) n)
    (fun n y hy ↦ secondTerm_bound hl hy.1 n) hmem (firstTerm_summable hx) hmem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65a2a0a9556705a9b6cadea17e53e93624a0191a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
