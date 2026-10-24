# insertRec_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "536f64f75d09e149a90802384b344e6e15929651",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 346,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f019510d60398ca0f3ecfe2cae65409e09f5b22f978391284049d74d518fc48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1aee473e-8633-582c-2b1b-284f7ad1aebe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4bcf610-0ddf-cd9f-aa75-b5f1da55db92",
  "kind": "theorem",
  "lexical_name": "insertRec_insert",
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
  "slug": "insertrec-insert--a5a9ffd1e9a94ce6df1ab78f",
  "source": {
    "blob": "536f64f75d09e149a90802384b344e6e15929651",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 346,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant5f019510d60398ca0f3ecfe2cae65409e09f5b22f978391284049d74d518fc48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5a9ffd1e9a94ce6df1ab78f6a6058bf95a8cf250184e817b7288c65cf3daeba",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant5f019510d60398ca0f3ecfe2cae65409e09f5b22f978391284049d74d518fc48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4bcf610-0ddf-cd9f-aa75-b5f1da55db92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem insertRec_insert {C : AList β → Sort*} (H0 : C ∅)
    (IH : ∀ (a : α) (b : β a) (l : AList β), a ∉ l → C l → C (l.insert a b)) {c : Sigma β}
    {l : AList β} (h : c.1 ∉ l) :
    @insertRec α β _ C H0 IH (l.insert c.1 c.2) = IH c.1 c.2 l h (@insertRec α β _ C H0 IH l) := by
  obtain ⟨l, hl⟩ := l
  suffices HEq (@insertRec α β _ C H0 IH ⟨c :: l, nodupKeys_cons.2 ⟨h, hl⟩⟩)
      (IH c.1 c.2 ⟨l, hl⟩ h (@insertRec α β _ C H0 IH ⟨l, hl⟩)) by
    cases c
    apply eq_of_heq
    convert this <;> rw [insert_of_notMem h]
  rw [insertRec]
  apply cast_heq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant5f019510d60398ca0f3ecfe2cae65409e09f5b22f978391284049d74d518fc48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant5f019510d60398ca0f3ecfe2cae65409e09f5b22f978391284049d74d518fc48.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `536f64f75d09e149a90802384b344e6e15929651` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
