# SeparatesTarget.mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38b01453ddf7ffab7f68e102b0bc5decf892fcee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac38f79dbf30e1c3b62f19fb2fb012bf2b110443beb8983d7bf8f455eb4bed5f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa984b04-5eb6-af90-084c-9e9396c166a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c338f92-bef1-245d-b2b3-823d0642eb09",
  "kind": "theorem",
  "lexical_name": "SeparatesTarget.mono",
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
  "slug": "separatestarget-mono--28e4bf8c51e260ad73674265",
  "source": {
    "blob": "38b01453ddf7ffab7f68e102b0bc5decf892fcee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TargetSeparation/Variantac38f79dbf30e1c3b62f19fb2fb012bf2b110443beb8983d7bf8f455eb4bed5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28e4bf8c51e260ad736742658d30b5a287c595cc85fc1d7426f74b11f34dec8d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TargetSeparation/Variantac38f79dbf30e1c3b62f19fb2fb012bf2b110443beb8983d7bf8f455eb4bed5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c338f92-bef1-245d-b2b3-823d0642eb09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SeparatesTarget.mono {obs : Test → Object → Value} {small large : Finset Test}
    {target : Object → Result} (separates : SeparatesTarget obs small target)
    (subset : small ⊆ large) : SeparatesTarget obs large target := by
  intro x y different
  obtain ⟨test, member, distinguishes⟩ := separates x y different
  exact ⟨test, subset member, distinguishes⟩

/-- No selected tests suffice exactly when the target takes the same value on all inputs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TargetSeparation/Variantac38f79dbf30e1c3b62f19fb2fb012bf2b110443beb8983d7bf8f455eb4bed5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TargetSeparation/Variantac38f79dbf30e1c3b62f19fb2fb012bf2b110443beb8983d7bf8f455eb4bed5f.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b01453ddf7ffab7f68e102b0bc5decf892fcee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
