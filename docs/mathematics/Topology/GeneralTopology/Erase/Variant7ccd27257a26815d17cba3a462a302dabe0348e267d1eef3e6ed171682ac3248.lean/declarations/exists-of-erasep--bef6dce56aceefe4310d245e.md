# exists_of_eraseP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61e119f9bbfb9ec7fb0485874c8fe7e885c2e3bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7ccd27257a26815d17cba3a462a302dabe0348e267d1eef3e6ed171682ac3248.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83d91ce9-a361-7581-79bf-f87b451084fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:133228f8-bab6-8f9a-d03c-f8af8e371ec0",
  "kind": "theorem",
  "lexical_name": "exists_of_eraseP",
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
  "slug": "exists-of-erasep--bef6dce56aceefe4310d245e",
  "source": {
    "blob": "61e119f9bbfb9ec7fb0485874c8fe7e885c2e3bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 73,
    "path": "GRWTSK/Topology/GeneralTopology/Erase/Variant7ccd27257a26815d17cba3a462a302dabe0348e267d1eef3e6ed171682ac3248.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bef6dce56aceefe4310d245eaf7be1563ebed7e99da7c5d56032baada7ada2fd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Erase/Variant7ccd27257a26815d17cba3a462a302dabe0348e267d1eef3e6ed171682ac3248.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:133228f8-bab6-8f9a-d03c-f8af8e371ec0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_of_eraseP : ∀ {l : List α} {a} (_ : a ∈ l) (_ : p a),
    ∃ a l₁ l₂, (∀ b ∈ l₁, ¬p b) ∧ p a ∧ l = l₁ ++ a :: l₂ ∧ l.eraseP p = l₁ ++ l₂
  | b :: l, _, al, pa =>
    if pb : p b then
      ⟨b, [], l, forall_mem_nil _, pb, by simp [pb]⟩
    else
      match al with
      | .head .. => nomatch pb pa
      | .tail _ al =>
        let ⟨c, l₁, l₂, h₁, h₂, h₃, h₄⟩ := exists_of_eraseP al pa
        ⟨c, b::l₁, l₂, (forall_mem_cons ..).2 ⟨pb, h₁⟩,
          h₂, by rw [h₃, cons_append], by simp [pb, h₄]⟩

-- The arguments are explicit here, so this lemma can be used as a case split.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Erase/Variant7ccd27257a26815d17cba3a462a302dabe0348e267d1eef3e6ed171682ac3248.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Erase/Variant7ccd27257a26815d17cba3a462a302dabe0348e267d1eef3e6ed171682ac3248.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61e119f9bbfb9ec7fb0485874c8fe7e885c2e3bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
