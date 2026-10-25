# splitAtPred_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a6689a642cb737eed9cc443ce79432f68557e6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1325,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79b790a3-a80a-7b8c-60b7-01f6a61ece9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a96bc3f7-2c08-535e-8f04-b7ca9f3d9c65",
  "kind": "theorem",
  "lexical_name": "splitAtPred_eq",
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
  "slug": "splitatpred-eq--2c3a1403c7fe7645949b3594",
  "source": {
    "blob": "5a6689a642cb737eed9cc443ce79432f68557e6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1344,
    "line": 1325,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c3a1403c7fe7645949b359442f7f4545ae45ccefd6466afa816f6f7b22f5299",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a96bc3f7-2c08-535e-8f04-b7ca9f3d9c65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1325–1344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splitAtPred_eq {α} (p : α → Bool) :
    ∀ L l₁ o l₂,
      (∀ x ∈ l₁, p x = false) →
        Option.elim' (L = l₁ ∧ l₂ = []) (fun a => p a = true ∧ L = l₁ ++ a::l₂) o →
          splitAtPred p L = (l₁, o, l₂)
  | [], _, none, _, _, ⟨rfl, rfl⟩ => rfl
  | [], l₁, some o, l₂, _, ⟨_, h₃⟩ => by simp at h₃
  | a :: L, l₁, o, l₂, h₁, h₂ => by
    rw [splitAtPred]
    have IH := splitAtPred_eq p L
    cases' o with o
    · cases' l₁ with a' l₁ <;> rcases h₂ with ⟨⟨⟩, rfl⟩
      rw [h₁ a (List.Mem.head _), cond, IH L none [] _ ⟨rfl, rfl⟩]
      exact fun x h => h₁ x (List.Mem.tail _ h)
    · cases' l₁ with a' l₁ <;> rcases h₂ with ⟨h₂, ⟨⟩⟩
      · rw [h₂, cond]
      rw [h₁ a (List.Mem.head _), cond, IH l₁ (some o) l₂ _ ⟨h₂, _⟩] <;> try rfl
      exact fun x h => h₁ x (List.Mem.tail _ h)
#align turing.partrec_to_TM2.split_at_pred_eq Turing.PartrecToTM2.splitAtPred_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean#L1325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a6689a642cb737eed9cc443ce79432f68557e6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
