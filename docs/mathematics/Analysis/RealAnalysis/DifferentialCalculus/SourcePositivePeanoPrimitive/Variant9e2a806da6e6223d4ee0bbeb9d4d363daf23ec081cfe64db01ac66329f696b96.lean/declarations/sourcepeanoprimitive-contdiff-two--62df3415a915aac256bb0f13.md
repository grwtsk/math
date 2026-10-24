# sourcePeanoPrimitive_contDiff_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb9ce3f5-0363-31da-d7c1-eaf6f7f330e4",
  "kind": "theorem",
  "lexical_name": "sourcePeanoPrimitive_contDiff_two",
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
  "slug": "sourcepeanoprimitive-contdiff-two--62df3415a915aac256bb0f13",
  "source": {
    "blob": "ad79cb3f1e4c216dc1f819b9eeb542508da5e4ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePeanoPrimitive/Variant9e2a806da6e6223d4ee0bbeb9d4d363daf23ec081cfe64db01ac66329f696b96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62df3415a915aac256bb0f1308e5842fda73449985e815d0fb3792fc0b77bcd4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePeanoPrimitive/Variant9e2a806da6e6223d4ee0bbeb9d4d363daf23ec081cfe64db01ac66329f696b96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb9ce3f5-0363-31da-d7c1-eaf6f7f330e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePeanoPrimitive_contDiff_two {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (sourcePeanoPrimitive A) := by
  have hc4 := primitiveCorrelationZero_contDiff_four hA
  have hc3 : ContDiff ℝ 3 (deriv (primitiveCorrelationZero A)) := hc4.deriv'
  have hc2 : ContDiff ℝ 2 (deriv (deriv (primitiveCorrelationZero A))) := hc3.deriv'
  have hc1 : ContDiff ℝ 2 (deriv (primitiveCorrelationZero A)) := hc3.of_le (by norm_num)
  have hc0 : ContDiff ℝ 2 (primitiveCorrelationZero A) := hc4.of_le (by norm_num)
  exact ((contDiff_id.div_const (2 : ℝ)).exp).mul ((hc2.sub hc1).add (hc0.div_const 4))

end FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePeanoPrimitive/Variant9e2a806da6e6223d4ee0bbeb9d4d363daf23ec081cfe64db01ac66329f696b96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePeanoPrimitive/Variant9e2a806da6e6223d4ee0bbeb9d4d363daf23ec081cfe64db01ac66329f696b96.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad79cb3f1e4c216dc1f819b9eeb542508da5e4ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
