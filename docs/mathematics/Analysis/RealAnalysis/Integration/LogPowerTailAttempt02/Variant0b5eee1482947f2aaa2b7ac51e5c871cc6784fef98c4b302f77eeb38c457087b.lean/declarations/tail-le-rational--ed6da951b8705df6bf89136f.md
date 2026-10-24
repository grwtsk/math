# tail_le_rational

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74bf87f1-de77-0c39-bd14-05d1e8548c3f",
  "kind": "theorem",
  "lexical_name": "tail_le_rational",
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
  "slug": "tail-le-rational--ed6da951b8705df6bf89136f",
  "source": {
    "blob": "aa0fbaac0c8849b7326b04d17505d42522181ecf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant0b5eee1482947f2aaa2b7ac51e5c871cc6784fef98c4b302f77eeb38c457087b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed6da951b8705df6bf89136faef1e299f76bbf00efb1bb6982a347e6eab886f3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant0b5eee1482947f2aaa2b7ac51e5c871cc6784fef98c4b302f77eeb38c457087b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74bf87f1-de77-0c39-bd14-05d1e8548c3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_le_rational : (∑' n : ℕ, logPower (n+3)) ≤ (27/7:ℝ) := by
  apply tail_le_integral.trans
  have hs : (7/5:ℝ) ≤ Real.sqrt 2 := by
    have hn := Real.sqrt_nonneg 2
    have he := Real.sq_sqrt (by norm_num : (0:ℝ)≤2)
    nlinarith
  apply (div_le_iff₀ (by positivity : 0<Real.sqrt 2)).mpr
  nlinarith [Real.log_two_lt_d9]

#print axioms logPower
#print axioms logPowerPrimitive
#print axioms logPower_hasDerivAt
#print axioms primitive_hasDerivAt
#print axioms logPower_nonneg
#print axioms logPower_antitone
#print axioms primitive_tendsto_zero
#print axioms logPower_integrable
#print axioms logPower_integral
#print axioms logPower_summable
#print axioms tail_summable
#print axioms tail_le_integral
#print axioms tail_le_rational
end ContinuousResearch.LogPowerTail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant0b5eee1482947f2aaa2b7ac51e5c871cc6784fef98c4b302f77eeb38c457087b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt02/Variant0b5eee1482947f2aaa2b7ac51e5c871cc6784fef98c4b302f77eeb38c457087b.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa0fbaac0c8849b7326b04d17505d42522181ecf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
