# nonadmissible_torsion_emits_residue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56d1ac35-6a0d-cd7c-85f6-61d9326b7399",
  "kind": "theorem",
  "lexical_name": "nonadmissible_torsion_emits_residue",
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
  "slug": "nonadmissible-torsion-emits-residue--bb5302bbbada543d49352941",
  "source": {
    "blob": "aa4dc764c33b6f193622fdb2c5062eb6ee30b3b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 261,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variantace53ebf93597fe3568676e7cec7f7321058c14892fe8937816844afeaf60f73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb5302bbbada543d49352941b5c75d0c693a017d2ac655db552d24d66b27ff30",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variantace53ebf93597fe3568676e7cec7f7321058c14892fe8937816844afeaf60f73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56d1ac35-6a0d-cd7c-85f6-61d9326b7399`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonadmissible_torsion_emits_residue :
    (PhiTorsion nonAdmissibleTorsionClass).admissible = false ∧
      (PhiTorsion nonAdmissibleTorsionClass).polarity =
        EmlResiduePolarity.none ∧
      TorsionScatteringResidue.non_admissible_torsion_data ∈
        (PhiTorsion nonAdmissibleTorsionClass).residues ∧
      TorsionScatteringResidue.torsion_not_forced_into_ring_algebra ∈
        (PhiTorsion nonAdmissibleTorsionClass).residues := by
  native_decide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variantace53ebf93597fe3568676e7cec7f7321058c14892fe8937816844afeaf60f73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variantace53ebf93597fe3568676e7cec7f7321058c14892fe8937816844afeaf60f73.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa4dc764c33b6f193622fdb2c5062eb6ee30b3b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
