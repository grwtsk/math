# negativeSurvival_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a56ffcfa9237b611a378fc89ccae210c6be009d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/532cb8d4c99b917abaea72f7efd1059050c8111bec937437c7395dceb38aae4f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b2e7701-c261-0cad-c487-230fa7129336",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:944018c7-2325-6fa6-aa09-138aa934c33a",
  "kind": "theorem",
  "lexical_name": "negativeSurvival_antitone",
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
  "slug": "negativesurvival-antitone--2704e97e2d6abce431cef15a",
  "source": {
    "blob": "a56ffcfa9237b611a378fc89ccae210c6be009d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 66,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PairedTailV1Prebytes/Variant532cb8d4c99b917abaea72f7efd1059050c8111bec937437c7395dceb38aae4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2704e97e2d6abce431cef15ac1a00d4f943ffcf8b4a92096f5540848dde03bd7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PairedTailV1Prebytes/Variant532cb8d4c99b917abaea72f7efd1059050c8111bec937437c7395dceb38aae4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:944018c7-2325-6fa6-aa09-138aa934c33a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negativeSurvival_antitone {A : ℝ} (hA : 1 ≤ A) :
    Antitone (negativeSurvival A) := by
  intro u v huv
  have hc := negativeSlope_continuous (show 0 < A by linarith)
  have hi := intervalIntegral.integral_add_adjacent_intervals
    (hc.intervalIntegrable u v) (hc.intervalIntegrable v (2*A))
  have hn := intervalIntegral.integral_nonneg_of_forall huv (negativeSlope_nonneg A)
  have ht : (∫ t in v..2*A, negativeSlope A t) ≤ ∫ t in u..2*A, negativeSlope A t := by
    linarith
  exact div_le_div_of_nonneg_right ht (negativeMass_pos hA).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PairedTailV1Prebytes/Variant532cb8d4c99b917abaea72f7efd1059050c8111bec937437c7395dceb38aae4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PairedTailV1Prebytes/Variant532cb8d4c99b917abaea72f7efd1059050c8111bec937437c7395dceb38aae4f.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a56ffcfa9237b611a378fc89ccae210c6be009d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
