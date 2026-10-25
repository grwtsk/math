# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e40d532ee0628c3729a2827c6c68a039413a3c66f0c999a26160ed64aad3dd48",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--55bcf13bef4b573ecfe30cee",
  "source": {
    "blob": "17f7b2842b95d1e54056498b85ffe6d89217e7d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 150,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55bcf13bef4b573ecfe30cee1a3488b9f676fbac01df9f66582f59803c633fa2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e40d532ee0628c3729a2827c6c68a039413a3c66f0c999a26160ed64aad3dd48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Finite α] [∀ a, Countable (π a)] : Countable (∀ a, π a) := by
  have : ∀ n, Countable (Fin n → ℕ) := by
    intro n
    induction' n with n ihn
    · change Countable (Fin 0 → ℕ); infer_instance
    · haveI := ihn
      exact Countable.of_equiv (ℕ × (Fin n → ℕ)) (Fin.consEquiv fun _ ↦ ℕ)
  rcases Finite.exists_equiv_fin α with ⟨n, ⟨e⟩⟩
  have f := fun a => (nonempty_embedding_nat (π a)).some
  exact ((Embedding.piCongrRight f).trans (Equiv.piCongrLeft' _ e).toEmbedding).countable

end sort
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17f7b2842b95d1e54056498b85ffe6d89217e7d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
