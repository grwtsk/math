# separatesPoints_continuous_of_t35Space_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e13bc797-b950-9649-d8d5-b130d06a776a",
  "kind": "lemma",
  "lexical_name": "separatesPoints_continuous_of_t35Space_Icc",
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
  "slug": "separatespoints-continuous-of-t35space-icc--e982edc2469bc07ff7aac5b7",
  "source": {
    "blob": "9616ec82e12eea144c4b7ff4c7242f032fb4f038",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 139,
    "path": "GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variant5681c537b3000907e9b7e366218bd05ced90c408e99a06ffd50ea3885e016ff0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e982edc2469bc07ff7aac5b7d2a3ff4a003b6b8efe20309cf73cb0ed7de3fc0e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompletelyRegular/Variant5681c537b3000907e9b7e366218bd05ced90c408e99a06ffd50ea3885e016ff0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e13bc797-b950-9649-d8d5-b130d06a776a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma separatesPoints_continuous_of_t35Space_Icc [T35Space X] :
    SeparatesPoints (Continuous : Set (X → I)) := by
  intro x y x_ne_y
  obtain ⟨f, f_cont, f_zero, f_one⟩ :=
    CompletelyRegularSpace.completely_regular x {y} isClosed_singleton x_ne_y
  exact ⟨f, f_cont, by aesop⟩

@[deprecated (since := "2025-04-13")]
alias separatesPoints_continuous_of_completelyRegularSpace_Icc :=
  separatesPoints_continuous_of_t35Space_Icc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompletelyRegular/Variant5681c537b3000907e9b7e366218bd05ced90c408e99a06ffd50ea3885e016ff0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variant5681c537b3000907e9b7e366218bd05ced90c408e99a06ffd50ea3885e016ff0.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9616ec82e12eea144c4b7ff4c7242f032fb4f038` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
