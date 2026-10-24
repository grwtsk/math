# rel_flip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e14da250d25792008faaaf220d8d578be00c961",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2670,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a50d95c6b823ac35e6d3ae030158eeb85c7ae4545e26916f3b36b1cd1f934a70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd6e1c4f-eaaa-c953-dcc9-c0e8b75b06a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a2e6d2b-de7f-f520-6d61-bfd1bdb683c6",
  "kind": "theorem",
  "lexical_name": "rel_flip",
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
  "slug": "rel-flip--ede5ac1c97cae5c96f5d512d",
  "source": {
    "blob": "3e14da250d25792008faaaf220d8d578be00c961",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2673,
    "line": 2670,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta50d95c6b823ac35e6d3ae030158eeb85c7ae4545e26916f3b36b1cd1f934a70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ede5ac1c97cae5c96f5d512d58d9ac1d0554926aad07fbe9e8dfe32ce012ee9d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta50d95c6b823ac35e6d3ae030158eeb85c7ae4545e26916f3b36b1cd1f934a70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a2e6d2b-de7f-f520-6d61-bfd1bdb683c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2670–2673.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rel_flip {s t} : Rel (flip r) s t ↔ Rel r t s :=
  ⟨rel_flip_aux, rel_flip_aux⟩
#align multiset.rel_flip Multiset.rel_flip

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta50d95c6b823ac35e6d3ae030158eeb85c7ae4545e26916f3b36b1cd1f934a70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta50d95c6b823ac35e6d3ae030158eeb85c7ae4545e26916f3b36b1cd1f934a70.lean#L2670).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e14da250d25792008faaaf220d8d578be00c961` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
