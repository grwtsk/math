# estimate_of_joint_full_block_sharp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d29195af-5f60-4720-5c11-0e140ee3c236",
  "kind": "theorem",
  "lexical_name": "estimate_of_joint_full_block_sharp",
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
  "slug": "estimate-of-joint-full-block-sharp--0af47ae6053cf638d96f8c00",
  "source": {
    "blob": "050dac6e8a06daa723583de2dde49f189166aca3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 113,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSharpWholeCubic/Variantee62cd8537a479fe6e195723f9a63a2f260a091a510e168dc5200e33787c71e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0af47ae6053cf638d96f8c006d47aa773a525062ed03e9c0b5a1f3f697b06c7d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceSharpWholeCubic/Variantee62cd8537a479fe6e195723f9a63a2f260a091a510e168dc5200e33787c71e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d29195af-5f60-4720-5c11-0e140ee3c236`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_joint_full_block_sharp (D Q : ℝ) (hQ : 91 ≤ Q)
    (hjoint : ∀ A : ℝ, Q ≤ A →
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        wholeCubicMainTerm A (d : ℝ)) + literalOmegaComplementarySector A ≤ D) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail (residual_witness_of_joint_full_block_sharp D Q hQ hjoint)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceSharpWholeCubic/Variantee62cd8537a479fe6e195723f9a63a2f260a091a510e168dc5200e33787c71e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSharpWholeCubic/Variantee62cd8537a479fe6e195723f9a63a2f260a091a510e168dc5200e33787c71e4.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `050dac6e8a06daa723583de2dde49f189166aca3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
