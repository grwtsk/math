# satisfiesM_foldlM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73c67e09-0570-477d-6b5c-378e3abef233",
  "kind": "theorem",
  "lexical_name": "satisfiesM_foldlM",
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
  "slug": "satisfiesm-foldlm--a6af6c0222dad35900c4c7a1",
  "source": {
    "blob": "80ffc5af53a94cf8103d85c53fb9d889807a3dcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 27,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variantfbc4897523d24579922805fc0e4f320d633c91f552f8b5636704efa2e6530b80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6af6c0222dad35900c4c7a143a7ae14e8ae9290dbe7a4df6c8be6f44721c7c1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variantfbc4897523d24579922805fc0e4f320d633c91f552f8b5636704efa2e6530b80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73c67e09-0570-477d-6b5c-378e3abef233`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem satisfiesM_foldlM [Monad m] [LawfulMonad m] {f : β → α → m β} (h₀ : motive b)
    (h₁ : ∀ (b) (_ : motive b) (a : α) (_ : a ∈ l), SatisfiesM motive (f b a)) :
    SatisfiesM motive (List.foldlM f b l) := by
  induction l generalizing b with
  | nil => exact SatisfiesM.pure h₀
  | cons hd tl ih =>
    simp only [foldlM_cons]
    apply SatisfiesM.bind_pre
    let ⟨q, qh⟩ := h₁ b h₀ hd mem_cons_self
    exact ⟨(fun ⟨b, bh⟩ => ⟨b, ih bh (fun b bh a am => h₁ b bh a (mem_cons_of_mem hd am))⟩) <$> q,
      by simpa using qh⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variantfbc4897523d24579922805fc0e4f320d633c91f552f8b5636704efa2e6530b80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variantfbc4897523d24579922805fc0e4f320d633c91f552f8b5636704efa2e6530b80.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80ffc5af53a94cf8103d85c53fb9d889807a3dcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
