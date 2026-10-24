# subsingleton_orbit_iff_mem_fixedPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32244f4b2a2aaa7fcae8315e45545274c7e3ebf6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7ce9a01-7012-f10b-dfff-0cb1c43d1c3b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:514627cc-e9e7-3cff-c2b2-4784c5fa134c",
  "kind": "theorem",
  "lexical_name": "subsingleton_orbit_iff_mem_fixedPoints",
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
  "slug": "subsingleton-orbit-iff-mem-fixedpoints--fc7cb676aab822972246b684",
  "source": {
    "blob": "32244f4b2a2aaa7fcae8315e45545274c7e3ebf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 79,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc7cb676aab822972246b684357cfe81f5848c066efca292b6079a7b51655820",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:514627cc-e9e7-3cff-c2b2-4784c5fa134c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subsingleton_orbit_iff_mem_fixedPoints {a : α} :
    (orbit M a).Subsingleton ↔ a ∈ fixedPoints M α := by
  rw [mem_fixedPoints]
  constructor
  · exact fun h m ↦ h (mem_orbit a m) (mem_orbit_self a)
  · rintro h _ ⟨m, rfl⟩ y ⟨p, rfl⟩
    simp only [h]

@[to_additive mem_fixedPoints_iff_card_orbit_eq_one]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32244f4b2a2aaa7fcae8315e45545274c7e3ebf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
