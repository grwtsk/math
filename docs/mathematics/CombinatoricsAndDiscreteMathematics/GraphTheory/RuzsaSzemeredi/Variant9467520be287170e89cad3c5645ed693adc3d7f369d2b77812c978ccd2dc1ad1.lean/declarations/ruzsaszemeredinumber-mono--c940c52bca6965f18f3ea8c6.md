# ruzsaSzemerediNumber_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82722dbad7c77b0f4158ef68b5b9646f197d2ac7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:773c2ad9-3444-5b4d-776e-88364a1349dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34c5a017-a8aa-bc43-23d4-522b89ccbde8",
  "kind": "lemma",
  "lexical_name": "ruzsaSzemerediNumber_mono",
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
  "slug": "ruzsaszemeredinumber-mono--c940c52bca6965f18f3ea8c6",
  "source": {
    "blob": "82722dbad7c77b0f4158ef68b5b9646f197d2ac7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c940c52bca6965f18f3ea8c6b8db035f2a8c504ff4d81b58579aa42ced23812b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34c5a017-a8aa-bc43-23d4-522b89ccbde8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ruzsaSzemerediNumber_mono (f : α ↪ β) : ruzsaSzemerediNumber α ≤ ruzsaSzemerediNumber β := by
  classical
  refine findGreatest_mono ?_ (choose_mono _ <| Fintype.card_le_of_embedding f)
  rintro n ⟨G, _, rfl, hG⟩
  refine ⟨G.map f, inferInstance, ?_, hG.map _⟩
  rw [← card_map ⟨map f, Finset.map_injective _⟩, ← cliqueFinset_map G f]
  decide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82722dbad7c77b0f4158ef68b5b9646f197d2ac7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
