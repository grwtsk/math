# closed_tail_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c736895-dcc1-0c61-3d4b-cf5d10db4c35",
  "kind": "theorem",
  "lexical_name": "closed_tail_intervalIntegrable",
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
  "slug": "closed-tail-intervalintegrable--ceb0dd1f16050be82e1f98f8",
  "source": {
    "blob": "afc73e34dc30bf9332c3536ba1dfda8b1b01ed9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelAudit/Variant1240c82a8af6a968dd84ace9c6ba33e67f85cb4c7f7a889f8e53a21727624e9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ceb0dd1f16050be82e1f98f86676bef350a3a4e3bb2b357f34e62dcf4ec92f0a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelAudit/Variant1240c82a8af6a968dd84ace9c6ba33e67f85cb4c7f7a889f8e53a21727624e9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c736895-dcc1-0c61-3d4b-cf5d10db4c35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closed_tail_intervalIntegrable (g : ℝ → ℝ) (A r : ℝ) (hA : 0 ≤ A)
    (hg : IntegrableOn g (Icc 0 A)) :
    IntervalIntegrable (fun u ↦ if r ≤ u then g u else 0) volume 0 A := by
  apply (intervalIntegrable_iff_integrableOn_Icc_of_le hA).mpr
  have h : IntegrableOn ((Ici r).indicator g) (Icc 0 A) :=
    hg.indicator measurableSet_Ici
  exact h.congr_fun (fun u _ ↦ by simp only [indicator, mem_Ici]) measurableSet_Icc

/-- The closed point itself is a null singleton, not an omitted arithmetic weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelAudit/Variant1240c82a8af6a968dd84ace9c6ba33e67f85cb4c7f7a889f8e53a21727624e9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelAudit/Variant1240c82a8af6a968dd84ace9c6ba33e67f85cb4c7f7a889f8e53a21727624e9f.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afc73e34dc30bf9332c3536ba1dfda8b1b01ed9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
