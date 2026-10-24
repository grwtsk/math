# isLocalMax_of_mono_anti

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
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c46efb6f-464e-9ff4-edb8-b643005cb899",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e3dac24a-59fd-d01e-8fb8-609661bbf5e8",
  "kind": "lemma",
  "lexical_name": "isLocalMax_of_mono_anti",
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
  "slug": "islocalmax-of-mono-anti--31e0c82daf7337fab8e94713",
  "source": {
    "blob": "79ecc5e5887296caf768cdc1b9fbd2acd0e6d4fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/OrderClosedExtr/Variant6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31e0c82daf7337fab8e947132e5fe07c53309652b5ed08a610b54ba1bfd5f2e0",
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

Occurrence: `result:e3dac24a-59fd-d01e-8fb8-609661bbf5e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocalMax_of_mono_anti
    {α : Type*} [TopologicalSpace α] [LinearOrder α] [OrderClosedTopology α]
    {β : Type*} [Preorder β]
    {a b c : α} (g₀ : a < b) (g₁ : b < c) {f : α → β}
    (h₀ : MonotoneOn f (Ioc a b))
    (h₁ : AntitoneOn f (Ico b c)) : IsLocalMax f b :=
  isLocalMax_of_mono_anti' (Ioc_mem_nhdsLE g₀) (Ico_mem_nhdsGE g₁) h₀ h₁

/-- If `f` is antitone on `(a,b]` and monotone on `[b,c)` then `f` has
a local minimum at `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OrderClosedExtr/Variant6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OrderClosedExtr/Variant6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79ecc5e5887296caf768cdc1b9fbd2acd0e6d4fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
