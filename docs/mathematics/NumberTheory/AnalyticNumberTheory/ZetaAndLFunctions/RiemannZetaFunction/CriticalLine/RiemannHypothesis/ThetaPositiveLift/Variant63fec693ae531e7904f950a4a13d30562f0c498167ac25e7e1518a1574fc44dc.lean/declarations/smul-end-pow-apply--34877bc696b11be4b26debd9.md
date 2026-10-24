# smul_end_pow_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2987a6f-d0ae-0bff-92bd-36a613bff201",
  "kind": "theorem",
  "lexical_name": "smul_end_pow_apply",
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
  "slug": "smul-end-pow-apply--34877bc696b11be4b26debd9",
  "source": {
    "blob": "181e8809db9e06af15d220fbf0197318f5778f14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 174,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34877bc696b11be4b26debd9f024ddfa6639c8794075cab4643157624340f608",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2987a6f-d0ae-0bff-92bd-36a613bff201`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem smul_end_pow_apply
    (c : ℝ) (F : Module.End ℝ ℝ[X])
    (n : ℕ) (p : ℝ[X]) :
    (((c : ℝ) • F) ^ n) p =
      c ^ n • ((F ^ n) p) := by
  induction n with
  | zero =>
      simp
  | succ n ih =>
      calc
        (((c : ℝ) • F) ^ (n + 1)) p =
            ((c : ℝ) • F)
              ((((c : ℝ) • F) ^ n) p) := by
                rw [pow_succ', Module.End.mul_apply]
        _ = ((c : ℝ) • F)
              (c ^ n • ((F ^ n) p)) := by rw [ih]
        _ = c • (c ^ n • F ((F ^ n) p)) := by
              rw [LinearMap.smul_apply, map_smul]
        _ = (c * c ^ n) • F ((F ^ n) p) := by
              rw [smul_smul]
        _ = c ^ (n + 1) • F ((F ^ n) p) := by
              congr 1
              rw [pow_succ]
              ring
        _ = c ^ (n + 1) • ((F ^ (n + 1)) p) := by
              congr 1
              rw [pow_succ', Module.End.mul_apply]

/-- The scaled signed Touchard operator applied repeatedly to one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `181e8809db9e06af15d220fbf0197318f5778f14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
