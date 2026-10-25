# instMonadLiftTOfMonadLift_instMonadLiftTOfPure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d11744b6abdc059cbf54fcdb623bb7b6c127a6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 17,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2e72510-6c6e-c0ad-43fb-8037e39f53c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2828452-c566-2271-7982-94fe432c3e5c",
  "kind": "theorem",
  "lexical_name": "instMonadLiftTOfMonadLift_instMonadLiftTOfPure",
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
  "slug": "instmonadlifttofmonadlift-instmonadlifttofpure--9f7bde2e8ea61bc5fade6d8a",
  "source": {
    "blob": "7d11744b6abdc059cbf54fcdb623bb7b6c127a6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f7bde2e8ea61bc5fade6d8a89caf1f4ff81c644b1bfe0cfa16c9b4ef418d08c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2828452-c566-2271-7982-94fe432c3e5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem instMonadLiftTOfMonadLift_instMonadLiftTOfPure [Monad m] [Monad n] {_ : MonadLift m n}
    [LawfulMonadLift m n] : instMonadLiftTOfMonadLift Id m n = Id.instMonadLiftTOfPure := by
  have hext {a b : MonadLiftT Id n} (h : @a.monadLift = @b.monadLift) : a = b := by
    cases a; cases b; simp [monadLift] at h; simp [h]
  apply hext
  ext α x
  simp [monadLift, LawfulMonadLift.monadLift_pure]

variable {m : Type u → Type v} {n : Type u → Type w} [Monad m] [Monad n] [MonadLiftT m n]
  [LawfulMonadLiftT m n] {α β : Type u}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d11744b6abdc059cbf54fcdb623bb7b6c127a6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
