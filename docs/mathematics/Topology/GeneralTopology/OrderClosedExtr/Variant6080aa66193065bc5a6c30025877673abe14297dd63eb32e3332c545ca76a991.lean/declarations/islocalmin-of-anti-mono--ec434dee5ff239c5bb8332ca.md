# isLocalMin_of_anti_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79ecc5e5887296caf768cdc1b9fbd2acd0e6d4fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9bf35ac9-078f-a57c-e4c3-b75205c7577a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e33e36a-0219-219e-c5f9-062c1e5964e2",
  "kind": "lemma",
  "lexical_name": "isLocalMin_of_anti_mono",
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
  "slug": "islocalmin-of-anti-mono--ec434dee5ff239c5bb8332ca",
  "source": {
    "blob": "79ecc5e5887296caf768cdc1b9fbd2acd0e6d4fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 43,
    "path": "GRWTSK/Topology/GeneralTopology/OrderClosedExtr/Variant6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec434dee5ff239c5bb8332caa65719ede41a6c329f41760b36a38ad1c35ed010",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OrderClosedExtr/Variant6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e33e36a-0219-219e-c5f9-062c1e5964e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocalMin_of_anti_mono
    {α : Type*} [TopologicalSpace α] [LinearOrder α] [OrderClosedTopology α]
    {β : Type*} [Preorder β] {a b c : α} (g₀ : a < b) (g₁ : b < c) {f : α → β}
    (h₀ : AntitoneOn f (Ioc a b)) (h₁ : MonotoneOn f (Ico b c)) : IsLocalMin f b :=
  mem_of_superset (Ioo_mem_nhds g₀ g₁) (fun x hx => by rcases le_total x b <;> aesop)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OrderClosedExtr/Variant6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OrderClosedExtr/Variant6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79ecc5e5887296caf768cdc1b9fbd2acd0e6d4fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
