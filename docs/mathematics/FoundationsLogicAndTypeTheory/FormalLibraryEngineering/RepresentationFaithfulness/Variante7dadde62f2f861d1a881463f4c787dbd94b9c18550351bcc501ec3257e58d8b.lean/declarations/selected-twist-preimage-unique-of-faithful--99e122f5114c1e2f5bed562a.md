# selected_twist_preimage_unique_of_faithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e03b7b75c7ccda1a7f84d1b802f2a71688ac4068",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7dadde62f2f861d1a881463f4c787dbd94b9c18550351bcc501ec3257e58d8b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83087594-02ed-6076-106f-7272fc843a52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d042e5b8-0f82-5e8b-2789-a9bd00db1980",
  "kind": "theorem",
  "lexical_name": "selected_twist_preimage_unique_of_faithful",
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
  "slug": "selected-twist-preimage-unique-of-faithful--99e122f5114c1e2f5bed562a",
  "source": {
    "blob": "e03b7b75c7ccda1a7f84d1b802f2a71688ac4068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RepresentationFaithfulness/Variante7dadde62f2f861d1a881463f4c787dbd94b9c18550351bcc501ec3257e58d8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99e122f5114c1e2f5bed562ac32d4598a38a353c09e69b81e60e1c06cf1758cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RepresentationFaithfulness/Variante7dadde62f2f861d1a881463f4c787dbd94b9c18550351bcc501ec3257e58d8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d042e5b8-0f82-5e8b-2789-a9bd00db1980`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selected_twist_preimage_unique_of_faithful
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    {R : Monodromy.MonodromyRepresentation Γ mul one α}
    {T : Folder.Research.RepresentationFaithfulness.SelectedTwistGroup α}
    (C : Folder.Research.RepresentationFaithfulness.ClassifiesSelectedTwists R T)
    {φ : α ≃ α}
    {g h : Γ}
    (hg : R.ρ g = φ)
    (hh : R.ρ h = φ) :
    g = h :=
  Folder.Research.RepresentationFaithfulness.selected_twist_preimage_unique_of_faithful
    C hg hh

end RepresentationFaithfulness
end Research
end Theorem
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RepresentationFaithfulness/Variante7dadde62f2f861d1a881463f4c787dbd94b9c18550351bcc501ec3257e58d8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RepresentationFaithfulness/Variante7dadde62f2f861d1a881463f4c787dbd94b9c18550351bcc501ec3257e58d8b.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e03b7b75c7ccda1a7f84d1b802f2a71688ac4068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
