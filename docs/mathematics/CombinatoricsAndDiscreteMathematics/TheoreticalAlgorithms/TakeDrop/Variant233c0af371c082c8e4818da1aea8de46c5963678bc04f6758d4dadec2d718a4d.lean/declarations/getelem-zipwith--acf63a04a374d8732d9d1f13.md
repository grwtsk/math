# getElem_zipWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:111b8b47-eca9-e18b-5427-7b9fc90f570e",
  "kind": "theorem",
  "lexical_name": "getElem_zipWith",
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
  "slug": "getelem-zipwith--acf63a04a374d8732d9d1f13",
  "source": {
    "blob": "edbba2789359903a141f25158271a09535561846",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 608,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant233c0af371c082c8e4818da1aea8de46c5963678bc04f6758d4dadec2d718a4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acf63a04a374d8732d9d1f138ccdd9cba03f6d767c08b18fed60d57d7694ad73",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant233c0af371c082c8e4818da1aea8de46c5963678bc04f6758d4dadec2d718a4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:111b8b47-eca9-e18b-5427-7b9fc90f570e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 608–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem_zipWith {f : α → β → γ} {l : List α} {l' : List β}
    {i : Nat} {h : i < (zipWith f l l').length} :
    (zipWith f l l')[i] =
      f (l[i]'(lt_length_left_of_zipWith h))
        (l'[i]'(lt_length_right_of_zipWith h)) := by
  rw [← Option.some_inj, ← getElem?_eq_getElem, getElem?_zipWith_eq_some]
  have := lt_length_right_of_zipWith h
  exact
    ⟨l[i]'(lt_length_left_of_zipWith h), l'[i],
      by rw [getElem?_eq_getElem], by rw [getElem?_eq_getElem this]; exact ⟨rfl, rfl⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant233c0af371c082c8e4818da1aea8de46c5963678bc04f6758d4dadec2d718a4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant233c0af371c082c8e4818da1aea8de46c5963678bc04f6758d4dadec2d718a4d.lean#L608).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edbba2789359903a141f25158271a09535561846` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
