# isLocalHomeomorph_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a8c728f-aff2-9acd-0fb2-b2c1a2771d14",
  "kind": "lemma",
  "lexical_name": "isLocalHomeomorph_coe",
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
  "slug": "islocalhomeomorph-coe--c5614c2632a33653c670874d",
  "source": {
    "blob": "f100dfac99db57c27650b5a343da01771e2a7417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 287,
    "path": "GRWTSK/Topology/GeneralTopology/AddCircle/Variant41c4395b36fe09d75b53239c7b0c07ab7cb4a9c21043a9a0b4f164478f036dd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5614c2632a33653c670874d6001bc3396e3c652509d59e8ea46e50c8d198a0f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddCircle/Variant41c4395b36fe09d75b53239c7b0c07ab7cb4a9c21043a9a0b4f164478f036dd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a8c728f-aff2-9acd-0fb2-b2c1a2771d14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocalHomeomorph_coe [DiscreteTopology (zmultiples p)] [DenselyOrdered 𝕜] :
    IsLocalHomeomorph ((↑) : 𝕜 → AddCircle p) := by
  intro a
  obtain ⟨b, hb1, hb2⟩ := exists_between (sub_lt_self a hp.out)
  exact ⟨partialHomeomorphCoe p b, ⟨hb2, lt_add_of_sub_right_lt hb1⟩, rfl⟩

end Continuity

/-- The image of the closed-open interval `[a, a + p)` under the quotient map `𝕜 → AddCircle p` is
the entire space. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddCircle/Variant41c4395b36fe09d75b53239c7b0c07ab7cb4a9c21043a9a0b4f164478f036dd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddCircle/Variant41c4395b36fe09d75b53239c7b0c07ab7cb4a9c21043a9a0b4f164478f036dd9.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f100dfac99db57c27650b5a343da01771e2a7417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
