# isTrichotomous_lex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca796cb3a890d26067cb931691e1177c210f5ce4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a53605d4b24fd03cd7038f2d16343ae927c94d7f70572f5d63cd97d51f4afa5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0e9a858-d42d-0928-a1a8-08f27c683654",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db6652b8-99f1-9fed-c86d-0d5a352eed13",
  "kind": "theorem",
  "lexical_name": "isTrichotomous_lex",
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
  "slug": "istrichotomous-lex--3f6167a6016a0252c167c49b",
  "source": {
    "blob": "ca796cb3a890d26067cb931691e1177c210f5ce4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant9a53605d4b24fd03cd7038f2d16343ae927c94d7f70572f5d63cd97d51f4afa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f6167a6016a0252c167c49bc4f9173068ae206689e6ff72ad38ea8309bc6b66",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant9a53605d4b24fd03cd7038f2d16343ae927c94d7f70572f5d63cd97d51f4afa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db6652b8-99f1-9fed-c86d-0d5a352eed13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTrichotomous_lex [∀ i, IsTrichotomous (β i) s] (wf : WellFounded r) :
    IsTrichotomous (∀ i, β i) (Pi.Lex r @s) :=
  { trichotomous := fun a b => by
      rcases eq_or_ne a b with hab | hab
      · exact Or.inr (Or.inl hab)
      · rw [Function.ne_iff] at hab
        let i := wf.min _ hab
        have hri : ∀ j, r j i → a j = b j := by
          intro j
          rw [← not_imp_not]
          exact fun h' => wf.not_lt_min _ _ h'
        have hne : a i ≠ b i := wf.min_mem _ hab
        rcases trichotomous_of s (a i) (b i) with hi | hi
        exacts [Or.inl ⟨i, hri, hi⟩,
          Or.inr <| Or.inr <| ⟨i, fun j hj => (hri j hj).symm, hi.resolve_left hne⟩] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant9a53605d4b24fd03cd7038f2d16343ae927c94d7f70572f5d63cd97d51f4afa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant9a53605d4b24fd03cd7038f2d16343ae927c94d7f70572f5d63cd97d51f4afa5.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca796cb3a890d26067cb931691e1177c210f5ce4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
