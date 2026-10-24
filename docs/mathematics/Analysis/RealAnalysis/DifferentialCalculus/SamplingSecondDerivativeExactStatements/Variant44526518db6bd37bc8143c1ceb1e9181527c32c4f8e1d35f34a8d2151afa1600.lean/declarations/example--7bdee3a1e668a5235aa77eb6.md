# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13329e72c798e1644f3a89f1ae59d3aff4f78b2b4ae81a69ef637646075b328e",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--7bdee3a1e668a5235aa77eb6",
  "source": {
    "blob": "a1af8d9ba1a9bda3b75b1f3c3a0b96eaa188df7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivativeExactStatements/Variant44526518db6bd37bc8143c1ceb1e9181527c32c4f8e1d35f34a8d2151afa1600.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bdee3a1e668a5235aa77eb65fec72af6180ec46dd0b9c68e88273e1d028e58f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivativeExactStatements/Variant44526518db6bd37bc8143c1ceb1e9181527c32c4f8e1d35f34a8d2151afa1600.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13329e72c798e1644f3a89f1ae59d3aff4f78b2b4ae81a69ef637646075b328e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A x k : ℝ) (hA : 1 ≤ A) (hx : 0 < x) (hk : 0 < k) :
    HasDerivAt (fun y : ℝ ↦ 1 / y * (Real.log k / Real.sqrt (y * k) *
      correlationDifference A (Real.log (y * k))))
      (1 / x ^ 2 * (Real.log k / Real.sqrt (x * k) *
        SamplingSecondDerivative.secondDifference A (Real.log (x * k)))) x :=
  SamplingSecondDerivative.derivative_sampling_term_hasDerivAt A x k hA hx hk

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivativeExactStatements/Variant44526518db6bd37bc8143c1ceb1e9181527c32c4f8e1d35f34a8d2151afa1600.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivativeExactStatements/Variant44526518db6bd37bc8143c1ceb1e9181527c32c4f8e1d35f34a8d2151afa1600.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1af8d9ba1a9bda3b75b1f3c3a0b96eaa188df7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
