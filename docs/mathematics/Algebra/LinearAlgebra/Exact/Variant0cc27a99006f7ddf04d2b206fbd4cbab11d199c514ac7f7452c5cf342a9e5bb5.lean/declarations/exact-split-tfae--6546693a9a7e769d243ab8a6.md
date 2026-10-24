# Exact.split_tfae'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a63dc54c692c7c3be8f04ba5eff3450ffcd9c5d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 398,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7be4c396-54e7-5586-0d9c-5f28db3fc0bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec71933f-86b0-4091-ca09-ffe830426ba3",
  "kind": "theorem",
  "lexical_name": "Exact.split_tfae'",
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
  "slug": "exact-split-tfae--6546693a9a7e769d243ab8a6",
  "source": {
    "blob": "2a63dc54c692c7c3be8f04ba5eff3450ffcd9c5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 398,
    "path": "GRWTSK/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6546693a9a7e769d243ab8a684f4e5dca390bd9886939cf8b4321abdb60cd365",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec71933f-86b0-4091-ca09-ffe830426ba3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Exact.split_tfae' (h : Function.Exact f g) :
    List.TFAE [
      Function.Injective f ∧ ∃ l, g ∘ₗ l = LinearMap.id,
      Function.Surjective g ∧ ∃ l, l ∘ₗ f = LinearMap.id,
      ∃ e : N ≃ₗ[R] M × P, f = e.symm ∘ₗ LinearMap.inl R M P ∧ g = LinearMap.snd R M P ∘ₗ e] := by
  tfae_have 1 → 3
  | ⟨hf, l, hl⟩ => ⟨_, (h.splitSurjectiveEquiv hf ⟨l, hl⟩).2⟩
  tfae_have 2 → 3
  | ⟨hg, l, hl⟩ => ⟨_, (h.splitInjectiveEquiv hg ⟨l, hl⟩).2⟩
  tfae_have 3 → 1
  | ⟨e, e₁, e₂⟩ => by
    have : Function.Injective f := e₁ ▸ e.symm.injective.comp LinearMap.inl_injective
    exact ⟨this, ⟨_, ((h.splitSurjectiveEquiv this).symm ⟨e, e₁, e₂⟩).2⟩⟩
  tfae_have 3 → 2
  | ⟨e, e₁, e₂⟩ => by
    have : Function.Surjective g := e₂ ▸ Prod.snd_surjective.comp e.surjective
    exact ⟨this, ⟨_, ((h.splitInjectiveEquiv this).symm ⟨e, e₁, e₂⟩).2⟩⟩
  tfae_finish

/-- Equivalent characterizations of split exact sequences. Also known as the **Splitting lemma**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a63dc54c692c7c3be8f04ba5eff3450ffcd9c5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
