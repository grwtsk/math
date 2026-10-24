# cubicCorrelationRemainder_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c306c714-af2f-f420-9c18-37faf15a6790",
  "kind": "theorem",
  "lexical_name": "cubicCorrelationRemainder_hasDerivAt",
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
  "slug": "cubiccorrelationremainder-hasderivat--8776012ea7d544314fff8d75",
  "source": {
    "blob": "fa3692cc2c089d26f5a66f9f45435542377cfa2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCubicCorrelationTaylor/Variantadee1da3f7ac0ff38a39969e09a75150ca0fabed8a6c01f5731f99e0b233110d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8776012ea7d544314fff8d753c943e23759ddcf4dfd5433160d3a5e6a49a3db8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCubicCorrelationTaylor/Variantadee1da3f7ac0ff38a39969e09a75150ca0fabed8a6c01f5731f99e0b233110d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c306c714-af2f-f420-9c18-37faf15a6790`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cubicCorrelationRemainder_hasDerivAt (A a y : ℝ) (hA : 0 < A) :
    HasDerivAt (cubicCorrelationRemainder A a)
      (deriv (sourceCorrelation explicitSecondDerivative A) (a + y) -
        (deriv (sourceCorrelation explicitSecondDerivative A) a +
          y * deriv (deriv (sourceCorrelation explicitSecondDerivative A)) a +
          y ^ 2 / 2 * deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) a)) y := by
  have hc := ((actual_correlation_contDiff_four A hA).differentiable (by norm_num) (a + y)).hasDerivAt
  simpa only [cubicCorrelationRemainder, Function.comp_def, Pi.sub_apply, mul_one] using
    (hc.comp y ((hasDerivAt_id y).const_add a)).sub
      (cubicCorrelationJet_hasDerivAt A a y)

/-- The derivative remainder has the exact third-power bound on both sides of the base point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCubicCorrelationTaylor/Variantadee1da3f7ac0ff38a39969e09a75150ca0fabed8a6c01f5731f99e0b233110d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCubicCorrelationTaylor/Variantadee1da3f7ac0ff38a39969e09a75150ca0fabed8a6c01f5731f99e0b233110d.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa3692cc2c089d26f5a66f9f45435542377cfa2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
