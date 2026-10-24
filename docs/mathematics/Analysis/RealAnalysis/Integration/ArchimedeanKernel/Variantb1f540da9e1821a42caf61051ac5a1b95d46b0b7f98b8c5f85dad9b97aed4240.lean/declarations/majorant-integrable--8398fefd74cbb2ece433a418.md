# majorant_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4463211-3165-3ddd-343a-3e63298aabba",
  "kind": "theorem",
  "lexical_name": "majorant_integrable",
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
  "slug": "majorant-integrable--8398fefd74cbb2ece433a418",
  "source": {
    "blob": "ba38176f029bb7c2db12acda37ab339dab77ab26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8398fefd74cbb2ece433a418d2c0b3a52881129fc8f79048acc08a2f094a3fb9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4463211-3165-3ddd-343a-3e63298aabba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem majorant_integrable : IntegrableOn majorant (Ioi 0) := by
  have he : majorant = fun t : ℝ => t^2*Real.exp (-t/2) + (1/2:ℝ)*(t^1*Real.exp (-t/2)) := by
    funext t
    unfold majorant
    ring
  rw [he]
  exact (polynomial_exp_integrable 2).add ((polynomial_exp_integrable 1).const_mul (1/2:ℝ))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba38176f029bb7c2db12acda37ab339dab77ab26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
