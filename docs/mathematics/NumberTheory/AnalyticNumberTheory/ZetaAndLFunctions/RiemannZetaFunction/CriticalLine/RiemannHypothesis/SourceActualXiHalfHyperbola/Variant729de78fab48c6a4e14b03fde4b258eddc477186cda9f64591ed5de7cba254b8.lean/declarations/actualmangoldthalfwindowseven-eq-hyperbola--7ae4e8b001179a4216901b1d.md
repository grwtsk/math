# actualMangoldtHalfWindowSeven_eq_hyperbola

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99ee4ce7-8a84-baa5-6522-3dfd57698f25",
  "kind": "theorem",
  "lexical_name": "actualMangoldtHalfWindowSeven_eq_hyperbola",
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
  "slug": "actualmangoldthalfwindowseven-eq-hyperbola--7ae4e8b001179a4216901b1d",
  "source": {
    "blob": "9e1f139319e35bb130d0579c9c8f802228e3bddf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiHalfHyperbola/Variant729de78fab48c6a4e14b03fde4b258eddc477186cda9f64591ed5de7cba254b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ae4e8b001179a4216901b1d7354b03bdf806c47f5010b9999d4daa91041f081",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiHalfHyperbola/Variant729de78fab48c6a4e14b03fde4b258eddc477186cda9f64591ed5de7cba254b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99ee4ce7-8a84-baa5-6522-3dfd57698f25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMangoldtHalfWindowSeven_eq_hyperbola {Y : ℝ} (hY : 7 ≤ Y) :
    actualMangoldtHalfWindowSeven Y =
      actualMoebiusLogHalfHyperbola (Nat.floor Y) - actualMoebiusLogHalfHyperbola 7 := by
  rw [← actualMangoldtHalfPrefix_eq_hyperbola, ← actualMangoldtHalfPrefix_eq_hyperbola]
  have hu : Finset.Icc 1 (Nat.floor Y) = Finset.Icc 1 7 ∪ Finset.Ioc 7 (Nat.floor Y) := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_union, Finset.mem_Ioc]
    have hf : 7 ≤ Nat.floor Y := Nat.le_floor hY
    omega
  have hd : Disjoint (Finset.Icc 1 7) (Finset.Ioc 7 (Nat.floor Y)) := by
    rw [Finset.disjoint_left]
    intro n hn hm
    simp only [Finset.mem_Icc, Finset.mem_Ioc] at hn hm
    omega
  rw [hu, Finset.sum_union hd]
  unfold actualMangoldtHalfWindowSeven
  ring

/-- The complete actual F7 arithmetic formula preserves signed full quotient rows and all heads. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiHalfHyperbola/Variant729de78fab48c6a4e14b03fde4b258eddc477186cda9f64591ed5de7cba254b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiHalfHyperbola/Variant729de78fab48c6a4e14b03fde4b258eddc477186cda9f64591ed5de7cba254b8.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e1f139319e35bb130d0579c9c8f802228e3bddf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
