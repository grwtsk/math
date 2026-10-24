# to_skyscraper_fromStalk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8aee7657d15061ea2f3a6209a96051e28423c662",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39935df84b0fa1f5529f877d1225140a5b9ab9e20787e99a8d9fee1652c74dd2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8176f463-b9d5-1fa6-fa03-78cc3ae50061",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f31553a-ed8c-3171-6e57-1d3e02df4210",
  "kind": "theorem",
  "lexical_name": "to_skyscraper_fromStalk",
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
  "slug": "to-skyscraper-fromstalk--694607d7eb5927062cc39efb",
  "source": {
    "blob": "8aee7657d15061ea2f3a6209a96051e28423c662",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 314,
    "path": "GRWTSK/Topology/Skyscraper/Variant39935df84b0fa1f5529f877d1225140a5b9ab9e20787e99a8d9fee1652c74dd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:694607d7eb5927062cc39efb18a7d6abfda77834e846e2857f027d413b07c09e",
  "verification": {
    "reference": "docs/verification/Topology/Skyscraper/Variant39935df84b0fa1f5529f877d1225140a5b9ab9e20787e99a8d9fee1652c74dd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f31553a-ed8c-3171-6e57-1d3e02df4210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem to_skyscraper_fromStalk {𝓕 : Presheaf C X} {c : C} (f : 𝓕 ⟶ skyscraperPresheaf p₀ c) :
    toSkyscraperPresheaf p₀ (fromStalk _ f) = f := by
  apply NatTrans.ext
  ext U
  dsimp
  split_ifs with h
  · simp
  · exact ((ite_eq_right h).symm.ndrec terminalIsTerminal).hom_ext ..

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Skyscraper/Variant39935df84b0fa1f5529f877d1225140a5b9ab9e20787e99a8d9fee1652c74dd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Skyscraper/Variant39935df84b0fa1f5529f877d1225140a5b9ab9e20787e99a8d9fee1652c74dd2.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aee7657d15061ea2f3a6209a96051e28423c662` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
