# seq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb597c66af089955a21c65e57166b9c06e60d34c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fb4ceab33d4cad0f76b20fbe0f784760a4f77db88a0e3e9b4a3135856f542c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:895b4f52-ce26-cba0-dad7-bd7250457a4f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a57f3e08-277c-054d-9d87-dc9e3d6ee0c5",
  "kind": "theorem",
  "lexical_name": "seq",
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
  "slug": "seq--7da6c6a40a7f82e2757ef9db",
  "source": {
    "blob": "fb597c66af089955a21c65e57166b9c06e60d34c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4fb4ceab33d4cad0f76b20fbe0f784760a4f77db88a0e3e9b4a3135856f542c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7da6c6a40a7f82e2757ef9db42a57d745c8cd17d289fb98b4a12287982bf78f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4fb4ceab33d4cad0f76b20fbe0f784760a4f77db88a0e3e9b4a3135856f542c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a57f3e08-277c-054d-9d87-dc9e3d6ee0c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem seq [Applicative m] [LawfulApplicative m] {x : m α}
    (hf : SatisfiesM p₁ f) (hx : SatisfiesM p₂ x)
    (H : ∀ {f a}, p₁ f → p₂ a → q (f a)) : SatisfiesM q (f <*> x) := by
  match f, x, hf, hx with | _, _, ⟨f, rfl⟩, ⟨x, rfl⟩ => ?_
  refine ⟨(fun ⟨a, h₁⟩ ⟨b, h₂⟩ => ⟨a b, H h₁ h₂⟩) <$> f <*> x, ?_⟩
  simp only [← pure_seq]; simp [seq_assoc]
  simp only [← pure_seq]; simp [seq_assoc, Function.comp_def]

/-- `SatisfiesM` distributes over `<*>`, strongest postcondition version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4fb4ceab33d4cad0f76b20fbe0f784760a4f77db88a0e3e9b4a3135856f542c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4fb4ceab33d4cad0f76b20fbe0f784760a4f77db88a0e3e9b4a3135856f542c6.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb597c66af089955a21c65e57166b9c06e60d34c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
