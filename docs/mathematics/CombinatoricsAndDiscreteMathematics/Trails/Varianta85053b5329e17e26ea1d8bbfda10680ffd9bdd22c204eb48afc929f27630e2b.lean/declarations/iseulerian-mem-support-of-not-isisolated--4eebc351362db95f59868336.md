# IsEulerian.mem_support_of_not_isIsolated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a493ccd012919244077162c7c4fef3c0ae94662",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00d89fb5-b226-d054-b0cd-8dd3364c7e37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8cbd115-df85-5bb0-3f81-c77e52fcb730",
  "kind": "theorem",
  "lexical_name": "IsEulerian.mem_support_of_not_isIsolated",
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
  "slug": "iseulerian-mem-support-of-not-isisolated--4eebc351362db95f59868336",
  "source": {
    "blob": "3a493ccd012919244077162c7c4fef3c0ae94662",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 129,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4eebc351362db95f59868336619205ab5a409ec9f2a2a71a4c0fdaf9ca433b32",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8cbd115-df85-5bb0-3f81-c77e52fcb730`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsEulerian.mem_support_of_not_isIsolated (hp : p.IsEulerian) (hw : ¬G.IsIsolated w) :
    w ∈ p.support := by
  have ⟨e, he, hwe⟩ := not_isIsolated_iff_exists_edgeSet_mem.mp hw
  exact mem_support_iff_exists_mem_edges.mpr <| .inr ⟨e, hp.mem_edges_iff.mpr he, hwe⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a493ccd012919244077162c7c4fef3c0ae94662` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
