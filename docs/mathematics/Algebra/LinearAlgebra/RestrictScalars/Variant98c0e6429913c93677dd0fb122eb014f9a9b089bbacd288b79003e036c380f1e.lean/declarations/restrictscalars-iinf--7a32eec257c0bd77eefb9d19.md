# restrictScalars_iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "674116b3044e6f0dc3ad5a5e4171609e012b6c1f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/98c0e6429913c93677dd0fb122eb014f9a9b089bbacd288b79003e036c380f1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e6fb1d2-4b51-5abc-4119-96f80473c0b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:289bc4cc-ec7c-c136-e088-ab7cc65bb4cc",
  "kind": "lemma",
  "lexical_name": "restrictScalars_iInf",
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
  "slug": "restrictscalars-iinf--7a32eec257c0bd77eefb9d19",
  "source": {
    "blob": "674116b3044e6f0dc3ad5a5e4171609e012b6c1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 155,
    "path": "GRWTSK/Algebra/LinearAlgebra/RestrictScalars/Variant98c0e6429913c93677dd0fb122eb014f9a9b089bbacd288b79003e036c380f1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a32eec257c0bd77eefb9d199ec671283a5c50909d4f8f9d35aa98c442622f6c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RestrictScalars/Variant98c0e6429913c93677dd0fb122eb014f9a9b089bbacd288b79003e036c380f1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:289bc4cc-ec7c-c136-e088-ab7cc65bb4cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma restrictScalars_iInf {ι : Sort*} (s : ι → Submodule R M) :
    (iInf s).restrictScalars S = ⨅ i, restrictScalars S (s i) := by
  ext; simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RestrictScalars/Variant98c0e6429913c93677dd0fb122eb014f9a9b089bbacd288b79003e036c380f1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RestrictScalars/Variant98c0e6429913c93677dd0fb122eb014f9a9b089bbacd288b79003e036c380f1e.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `674116b3044e6f0dc3ad5a5e4171609e012b6c1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
