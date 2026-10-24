# besselPotential_neg_one_lineDerivOp_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d67f5b47-4f0a-2531-ad77-df4e3424f6ee",
  "kind": "theorem",
  "lexical_name": "besselPotential_neg_one_lineDerivOp_eq",
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
  "slug": "besselpotential-neg-one-linederivop-eq--7e9193c6c40966b57e500a52",
  "source": {
    "blob": "f7dea53e1e27ae29a1e6671eb8790031e379be67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 116,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e9193c6c40966b57e500a52c16cb3fefcc286523a160b97cec581e136645c67",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d67f5b47-4f0a-2531-ad77-df4e3424f6ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem besselPotential_neg_one_lineDerivOp_eq {m : E} (f : 𝓢'(E, F)) :
    (besselPotential E F (-1)) (∂_{m} f) =
      (2 * π * Complex.I) • fourierMultiplierCLM F (fun x ↦ Complex.ofReal <|
      inner ℝ x m * (1 + ‖x‖ ^ 2) ^ (-1 / 2 : ℝ)) f := by
  rw [lineDeriv_eq_fourierMultiplierCLM, besselPotential,
    ContinuousLinearMap.map_smul_of_tower,
    fourierMultiplierCLM_fourierMultiplierCLM_apply (by fun_prop) (by fun_prop)]
  congr
  ext x
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7dea53e1e27ae29a1e6671eb8790031e379be67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
