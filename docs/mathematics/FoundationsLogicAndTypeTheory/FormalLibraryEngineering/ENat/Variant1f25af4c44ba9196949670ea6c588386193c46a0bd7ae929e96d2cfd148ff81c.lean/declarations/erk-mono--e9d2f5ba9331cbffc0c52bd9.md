# eRk_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cb4eb9e-491e-df6c-0de7-f07cca145168",
  "kind": "lemma",
  "lexical_name": "eRk_mono",
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
  "slug": "erk-mono--e9d2f5ba9331cbffc0c52bd9",
  "source": {
    "blob": "4eb4041aa11a9725bed602b64d2b72a7a242660c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 226,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENat/Variant1f25af4c44ba9196949670ea6c588386193c46a0bd7ae929e96d2cfd148ff81c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9d2f5ba9331cbffc0c52bd9f1c399d99505922fcdbddac3ebc1afebee9fab29",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENat/Variant1f25af4c44ba9196949670ea6c588386193c46a0bd7ae929e96d2cfd148ff81c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cb4eb9e-491e-df6c-0de7-f07cca145168`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eRk_mono (M : Matroid α) : Monotone M.eRk := by
  rintro X Y (hXY : X ⊆ Y)
  obtain ⟨I, hI⟩ := M.exists_isBasis' X
  obtain ⟨J, hJ, hIJ⟩ := hI.indep.subset_isBasis'_of_subset (hI.subset.trans hXY)
  rw [hI.eRk_eq_encard, hJ.eRk_eq_encard]
  exact encard_mono hIJ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENat/Variant1f25af4c44ba9196949670ea6c588386193c46a0bd7ae929e96d2cfd148ff81c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENat/Variant1f25af4c44ba9196949670ea6c588386193c46a0bd7ae929e96d2cfd148ff81c.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4eb4041aa11a9725bed602b64d2b72a7a242660c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
