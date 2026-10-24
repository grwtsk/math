# nonaffine_mul_continuous_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:686d44a6-12c1-bbad-0871-13fc88ba7fbf",
  "kind": "theorem",
  "lexical_name": "nonaffine_mul_continuous_intervalIntegrable",
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
  "slug": "nonaffine-mul-continuous-intervalintegrable--f1d4f36a15073dc94a178c58",
  "source": {
    "blob": "94d79da02710c9c45885f8c7e6c27c0c1e75cffc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 158,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant37671c206f5d1a04b93790196ae983e5ef0c050592d70f761a6ab426dbf2fb81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1d4f36a15073dc94a178c582681d71e6335bbe0f92293024903c3bdb8c56c67",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant37671c206f5d1a04b93790196ae983e5ef0c050592d70f761a6ab426dbf2fb81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:686d44a6-12c1-bbad-0871-13fc88ba7fbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonaffine_mul_continuous_intervalIntegrable (A a b : ℝ) (hab : a ≤ b)
    (F : ℝ → ℝ) (hF : Continuous F) :
    IntervalIntegrable (fun s => F s * nonaffineDiscrepancy A s) volume a b := by
  have ht : Continuous (affineTrend A) := by unfold affineTrend; fun_prop
  have hz := (normalizedPsiError_intervalIntegrable a b hab).sub
    (ht.intervalIntegrable (μ := volume) a b)
  simpa only [Pi.sub_apply, nonaffineDiscrepancy, mul_comm] using
    hz.mul_continuousOn hF.continuousOn

/-- Exact integration over all physical cells. Only endpoints, a null set, are excluded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant37671c206f5d1a04b93790196ae983e5ef0c050592d70f761a6ab426dbf2fb81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant37671c206f5d1a04b93790196ae983e5ef0c050592d70f761a6ab426dbf2fb81.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94d79da02710c9c45885f8c7e6c27c0c1e75cffc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
