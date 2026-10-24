# MeasurableSpace.pi_eq_generateFrom_projections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31c66e69-cc90-860f-627f-e5597628e412",
  "kind": "lemma",
  "lexical_name": "MeasurableSpace.pi_eq_generateFrom_projections",
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
  "slug": "measurablespace-pi-eq-generatefrom-projections--6affcd7ce48a5548ee9dd736",
  "source": {
    "blob": "0e6a1f7b5f201cf830bcda9aca77a8f143dd0eca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 36,
    "path": "GRWTSK/Analysis/MeasureTheory/Pi/Variant61672158d03dcb32043a73bd0488f4e18cf82fffe320ed3e87c1df012096b121.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6affcd7ce48a5548ee9dd736da67f656844213cb7d92fd89009173b798ef2ea1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Pi/Variant61672158d03dcb32043a73bd0488f4e18cf82fffe320ed3e87c1df012096b121.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31c66e69-cc90-860f-627f-e5597628e412`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MeasurableSpace.pi_eq_generateFrom_projections {mα : ∀ i, MeasurableSpace (α i)} :
    pi = generateFrom {B | ∃ (i : ι) (A : Set (α i)), MeasurableSet A ∧ eval i ⁻¹' A = B} := by
  simp only [pi, ← generateFrom_iUnion_measurableSet, iUnion_setOf, measurableSet_comap]

/-- Boxes formed by π-systems form a π-system. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Pi/Variant61672158d03dcb32043a73bd0488f4e18cf82fffe320ed3e87c1df012096b121.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Pi/Variant61672158d03dcb32043a73bd0488f4e18cf82fffe320ed3e87c1df012096b121.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e6a1f7b5f201cf830bcda9aca77a8f143dd0eca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
