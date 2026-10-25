# step_supports

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ee1a79ce54aa340ecbff62a956332bd6748fbf8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 648,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04785f20-a0b4-169f-950c-0ce28365dfc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b54ac858-db12-b7bc-2c57-4b18946b8ad9",
  "kind": "theorem",
  "lexical_name": "step_supports",
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
  "slug": "step-supports--b2eadeb6a1e3737475e80ee8",
  "source": {
    "blob": "6ee1a79ce54aa340ecbff62a956332bd6748fbf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 648,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2eadeb6a1e3737475e80ee8570f13c0bfe97318872335eafc0ba19ad76806d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b54ac858-db12-b7bc-2c57-4b18946b8ad9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 648–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem step_supports (M : Λ → Stmt Γ Λ σ) {S : Finset Λ} (ss : Supports M S) :
    ∀ {c c' : Cfg Γ Λ σ}, c' ∈ step M c → c.l ∈ Finset.insertNone S → c'.l ∈ Finset.insertNone S
  | ⟨some l₁, v, T⟩, c', h₁, h₂ => by
    replace h₂ := ss.2 _ (Finset.some_mem_insertNone.1 h₂)
    simp only [step, Option.mem_def, Option.some.injEq] at h₁; subst c'
    revert h₂; induction M l₁ generalizing v T with intro hs
    | branch p q₁' q₂' IH₁ IH₂ =>
      unfold stepAux; cases p T.1 v
      · exact IH₂ _ _ hs.2
      · exact IH₁ _ _ hs.1
    | goto => exact Finset.some_mem_insertNone.2 (hs _ _)
    | halt => apply Multiset.mem_cons_self
    | _ _ q IH => exact IH _ _ hs

variable [Inhabited σ]

/-- The initial state, given a finite input that is placed on the tape starting at the TM head and
going to the right. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean#L648).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ee1a79ce54aa340ecbff62a956332bd6748fbf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
