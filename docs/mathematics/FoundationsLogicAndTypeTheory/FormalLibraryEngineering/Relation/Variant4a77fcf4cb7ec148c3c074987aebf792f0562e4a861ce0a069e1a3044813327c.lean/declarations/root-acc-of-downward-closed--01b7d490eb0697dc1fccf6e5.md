# _root_.Acc.of_downward_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdcfecfb98bbd9049f933a5e5286c9465df952a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a77fcf4cb7ec148c3c074987aebf792f0562e4a861ce0a069e1a3044813327c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2d5595b-6942-f712-2137-c8e517a37271",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:607ea8cd-6619-5760-8db5-34c627b14788",
  "kind": "theorem",
  "lexical_name": "_root_.Acc.of_downward_closed",
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
  "slug": "root-acc-of-downward-closed--01b7d490eb0697dc1fccf6e5",
  "source": {
    "blob": "bdcfecfb98bbd9049f933a5e5286c9465df952a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 186,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant4a77fcf4cb7ec148c3c074987aebf792f0562e4a861ce0a069e1a3044813327c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01b7d490eb0697dc1fccf6e57cd27481505744d9a180d11f4f424398ed829449",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant4a77fcf4cb7ec148c3c074987aebf792f0562e4a861ce0a069e1a3044813327c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:607ea8cd-6619-5760-8db5-34c627b14788`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Acc.of_downward_closed (dc : ∀ {a b}, rβ b (f a) → ∃ c, f c = b) (a : α)
    (ha : Acc (InvImage rβ f) a) : Acc rβ (f a) :=
  ha.of_fibration f fun a _ h ↦
    let ⟨a', he⟩ := dc h
    ⟨a', by simp_all [InvImage], he⟩

end Fibration

section Map
variable {r : α → β → Prop} {f : α → γ} {g : β → δ} {c : γ} {d : δ}

/-- The map of a relation `r` through a pair of functions pushes the
relation to the codomains of the functions.  The resulting relation is
defined by having pairs of terms related if they have preimages
related by `r`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant4a77fcf4cb7ec148c3c074987aebf792f0562e4a861ce0a069e1a3044813327c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant4a77fcf4cb7ec148c3c074987aebf792f0562e4a861ce0a069e1a3044813327c.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdcfecfb98bbd9049f933a5e5286c9465df952a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
