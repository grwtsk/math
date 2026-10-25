# range_enumOrd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfc0e43e-bc15-507f-1a16-22b815fc02e3",
  "kind": "theorem",
  "lexical_name": "range_enumOrd",
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
  "slug": "range-enumord--2860d1e32028d7b9c6eddc58",
  "source": {
    "blob": "51e967fe6cd334ceb83d48749f213b4c64bd2f61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2860d1e32028d7b9c6eddc58986d4858c29ce895169273ee920a85ffe732ff7b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfc0e43e-bc15-507f-1a16-22b815fc02e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_enumOrd (hs : ¬ BddAbove s) : range (enumOrd s) = s := by
  ext a
  let t := { b | a ≤ enumOrd s b }
  constructor
  · rintro ⟨b, rfl⟩
    exact enumOrd_mem hs b
  · intro ha
    refine ⟨sInf t, (enumOrd_le_of_forall_lt ha ?_).antisymm ?_⟩
    · intro b hb
      by_contra! hb'
      exact hb.not_ge (csInf_le' hb')
    · exact csInf_mem (s := t) ⟨a, (enumOrd_strictMono hs).id_le a⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51e967fe6cd334ceb83d48749f213b4c64bd2f61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
