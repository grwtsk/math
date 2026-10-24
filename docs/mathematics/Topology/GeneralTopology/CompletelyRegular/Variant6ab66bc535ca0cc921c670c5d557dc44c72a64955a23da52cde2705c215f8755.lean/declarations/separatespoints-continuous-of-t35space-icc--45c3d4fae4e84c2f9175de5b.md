# separatesPoints_continuous_of_t35Space_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6aee4768bf286971cc440af6b5cd5a3da33d49f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b929e6f4-6046-12a4-b8ce-d05bebe37515",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a389ffb8-ac2d-2338-20d6-2b2aee400b2f",
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
  "slug": "separatespoints-continuous-of-t35space-icc--45c3d4fae4e84c2f9175de5b",
  "source": {
    "blob": "6aee4768bf286971cc440af6b5cd5a3da33d49f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45c3d4fae4e84c2f9175de5bd0bed207b963163733dbcbf81456fa3f3c805ebc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a389ffb8-ac2d-2338-20d6-2b2aee400b2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–141.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aee4768bf286971cc440af6b5cd5a3da33d49f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
