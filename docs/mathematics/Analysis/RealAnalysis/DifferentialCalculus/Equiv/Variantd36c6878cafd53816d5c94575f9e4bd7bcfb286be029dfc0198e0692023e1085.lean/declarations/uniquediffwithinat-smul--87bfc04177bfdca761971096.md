# UniqueDiffWithinAt.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40fa614f-0993-281c-452e-216d52341e78",
  "kind": "theorem",
  "lexical_name": "UniqueDiffWithinAt.smul",
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
  "slug": "uniquediffwithinat-smul--87bfc04177bfdca761971096",
  "source": {
    "blob": "8c67f64363d225111757c5f9b3b8a3968254cdea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 459,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantd36c6878cafd53816d5c94575f9e4bd7bcfb286be029dfc0198e0692023e1085.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87bfc04177bfdca76197109677bc94653743723d6fb71d2f1d55f8604fd96ce2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantd36c6878cafd53816d5c94575f9e4bd7bcfb286be029dfc0198e0692023e1085.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40fa614f-0993-281c-452e-216d52341e78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem UniqueDiffWithinAt.smul (h : UniqueDiffWithinAt 𝕜 s x)
    {G : Type*} [GroupWithZero G] [DistribMulAction G E] [ContinuousConstSMul G E]
    [SMulCommClass G 𝕜 E] {c : G} (hc : c ≠ 0) :
    UniqueDiffWithinAt 𝕜 (c • s) (c • x) :=
  (ContinuousLinearEquiv.smulLeft <| Units.mk0 c hc).hasFDerivWithinAt
    |>.uniqueDiffWithinAt_of_continuousLinearEquiv _ h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantd36c6878cafd53816d5c94575f9e4bd7bcfb286be029dfc0198e0692023e1085.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantd36c6878cafd53816d5c94575f9e4bd7bcfb286be029dfc0198e0692023e1085.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c67f64363d225111757c5f9b3b8a3968254cdea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
