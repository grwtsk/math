# thetaLogError_measurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f57aef40-ef54-ba97-f488-5f659b485d92",
  "kind": "theorem",
  "lexical_name": "thetaLogError_measurable",
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
  "slug": "thetalogerror-measurable--562ab97ca1126b7f726b91ec",
  "source": {
    "blob": "53a19799ef695dbb7144f8cb7b71e34ab8218575",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 53,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:562ab97ca1126b7f726b91ecccdfca641ef21b4be9c1129258f62d338d15909c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f57aef40-ef54-ba97-f488-5f659b485d92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaLogError_measurable : Measurable thetaLogError := by
  have ht : Measurable (fun u : ℝ => Chebyshev.theta (Real.exp u)) :=
    Chebyshev.theta_mono.measurable.comp Real.continuous_exp.measurable
  have h := (ht.sub Real.continuous_exp.measurable).mul
    (Real.continuous_exp.comp continuous_neg).measurable
  convert h using 1
  funext u
  exact thetaLogError_eq u

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53a19799ef695dbb7144f8cb7b71e34ab8218575` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
