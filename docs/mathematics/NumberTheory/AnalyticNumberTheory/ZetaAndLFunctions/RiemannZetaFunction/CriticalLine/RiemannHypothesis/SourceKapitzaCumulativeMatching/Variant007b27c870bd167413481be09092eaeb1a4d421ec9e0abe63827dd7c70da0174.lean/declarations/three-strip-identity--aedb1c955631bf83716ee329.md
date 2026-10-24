# three_strip_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00d05661-204f-66ce-cb8d-21d198f1deb1",
  "kind": "theorem",
  "lexical_name": "three_strip_identity",
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
  "slug": "three-strip-identity--aedb1c955631bf83716ee329",
  "source": {
    "blob": "93b174870a71889a38f5eb98b0628594376c7c59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 172,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCumulativeMatching/Variant007b27c870bd167413481be09092eaeb1a4d421ec9e0abe63827dd7c70da0174.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aedb1c955631bf83716ee329823279751475dd07ac6642dcd61f8f836332e876",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCumulativeMatching/Variant007b27c870bd167413481be09092eaeb1a4d421ec9e0abe63827dd7c70da0174.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00d05661-204f-66ce-cb8d-21d198f1deb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem three_strip_identity (rows : ℕ → ℝ) (D B U : ℕ)
    (hD : 2 ≤ D) (hDB : D ≤ B) (hBU : B ≤ U) :
    (∑ d ∈ Finset.Icc 2 U, rows d) =
      (∑ d ∈ Finset.Icc 2 D, rows d) +
      (∑ d ∈ Finset.Ioc D B, rows d) +
      (∑ d ∈ Finset.Ioc B U, rows d) := by
  have h1 : Finset.Icc 2 U = Finset.Icc 2 D ∪ Finset.Ioc D U := by
    ext d
    simp only [Finset.mem_Icc, Finset.mem_union, Finset.mem_Ioc]
    omega
  have h2 : Finset.Ioc D U = Finset.Ioc D B ∪ Finset.Ioc B U := by
    ext d
    simp only [Finset.mem_union, Finset.mem_Ioc]
    omega
  have hd1 : Disjoint (Finset.Icc 2 D) (Finset.Ioc D U) := by
    apply Finset.disjoint_left.mpr
    intro d hd he
    simp only [Finset.mem_Icc, Finset.mem_Ioc] at hd he
    omega
  have hd2 : Disjoint (Finset.Ioc D B) (Finset.Ioc B U) := by
    apply Finset.disjoint_left.mpr
    intro d hd he
    simp only [Finset.mem_Ioc] at hd he
    omega
  rw [h1, Finset.sum_union hd1, h2, Finset.sum_union hd2]
  ring

end FormalResearch.RiemannHypothesis.SourceKapitzaCumulativeMatching
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCumulativeMatching/Variant007b27c870bd167413481be09092eaeb1a4d421ec9e0abe63827dd7c70da0174.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCumulativeMatching/Variant007b27c870bd167413481be09092eaeb1a4d421ec9e0abe63827dd7c70da0174.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93b174870a71889a38f5eb98b0628594376c7c59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
