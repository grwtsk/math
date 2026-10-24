# measurableLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc80e0098e3c551dffc1569b7b1395fde74d448e68260c95f4b61f91c3f3751b",
  "kind": "def",
  "lexical_name": "measurableLE",
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
  "slug": "measurablele--08889f3530bbc21e99c0bf73",
  "source": {
    "blob": "520a7af4aa06dd9e018a1ec7a199e0df54ec2c6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 466,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variantdd3c076973513ceed2272d260f85cafa7013da146c11d424df0c2242d094b6b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08889f3530bbc21e99c0bf73bdd96b8e93e4731b6dd6f4e8f4b055e51cb39cd7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variantdd3c076973513ceed2272d260f85cafa7013da146c11d424df0c2242d094b6b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc80e0098e3c551dffc1569b7b1395fde74d448e68260c95f4b61f91c3f3751b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def measurableLE (μ ν : Measure α) : Set (α → ℝ≥0∞) :=
  {f | Measurable f ∧ ∀ (A : Set α), MeasurableSet A → (∫⁻ x in A, f x ∂μ) ≤ ν A}
#align measure_theory.measure.lebesgue_decomposition.measurable_le MeasureTheory.Measure.LebesgueDecomposition.measurableLE

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variantdd3c076973513ceed2272d260f85cafa7013da146c11d424df0c2242d094b6b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variantdd3c076973513ceed2272d260f85cafa7013da146c11d424df0c2242d094b6b6.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `520a7af4aa06dd9e018a1ec7a199e0df54ec2c6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
