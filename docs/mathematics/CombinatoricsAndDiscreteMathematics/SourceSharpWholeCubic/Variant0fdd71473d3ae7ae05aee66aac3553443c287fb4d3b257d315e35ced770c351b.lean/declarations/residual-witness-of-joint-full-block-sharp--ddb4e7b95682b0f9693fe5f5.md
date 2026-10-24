# residual_witness_of_joint_full_block_sharp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8eb4aa96-982f-521d-6532-80a7deff7be2",
  "kind": "theorem",
  "lexical_name": "residual_witness_of_joint_full_block_sharp",
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
  "slug": "residual-witness-of-joint-full-block-sharp--ddb4e7b95682b0f9693fe5f5",
  "source": {
    "blob": "551f3ad1970d7f5ddb0ef506e147511d43eb4f2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSharpWholeCubic/Variant0fdd71473d3ae7ae05aee66aac3553443c287fb4d3b257d315e35ced770c351b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddb4e7b95682b0f9693fe5f54f47d7b9461c8422b66412e5d9b506285d265d13",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceSharpWholeCubic/Variant0fdd71473d3ae7ae05aee66aac3553443c287fb4d3b257d315e35ced770c351b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8eb4aa96-982f-521d-6532-80a7deff7be2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_witness_of_joint_full_block_sharp (D Q : ℝ) (hQ : 91 ≤ Q)
    (hjoint : ∀ A : ℝ, Q ≤ A →
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        wholeCubicMainTerm A (d : ℝ)) + literalOmegaComplementarySector A ≤ D) :
    MertensResidualTailUpperBound := by
  refine ⟨sharpWholeResidualBudget D Q, sharpWholeResidualBudget_nonneg D Q,
    Q, by linarith, ?_⟩
  intro A hA
  exact (residual_upper_of_joint_full_block_at_radius_sharp Q A D hQ hA (hjoint A hA)).trans
    (le_max_right _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceSharpWholeCubic/Variant0fdd71473d3ae7ae05aee66aac3553443c287fb4d3b257d315e35ced770c351b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSharpWholeCubic/Variant0fdd71473d3ae7ae05aee66aac3553443c287fb4d3b257d315e35ced770c351b.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `551f3ad1970d7f5ddb0ef506e147511d43eb4f2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
