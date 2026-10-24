# _root_.OrzechProperty.bijective_of_surjective_of_finrank_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3684aa342bd506766b87c1c6326320c428a6bff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 374,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84e30a7f-23d6-3b60-a166-9b6a2f388435",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b2d6e03-a3b2-93a2-0c14-f5fb0eb3a568",
  "kind": "theorem",
  "lexical_name": "_root_.OrzechProperty.bijective_of_surjective_of_finrank_le",
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
  "slug": "root-orzechproperty-bijective-of-surjective-of-finrank-le--1be817f847ceee039d6adc7b",
  "source": {
    "blob": "a3684aa342bd506766b87c1c6326320c428a6bff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 374,
    "path": "GRWTSK/Algebra/LinearAlgebra/Free/Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1be817f847ceee039d6adc7b7cf88f88b61110a12525ba59fbfe9891cc0c0c1a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Free/Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b2d6e03-a3b2-93a2-0c14-f5fb0eb3a568`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.OrzechProperty.bijective_of_surjective_of_finrank_le
    [OrzechProperty R] [Module.Finite R M] [Module.Finite R M']
    (f : M →ₗ[R] M') (hf : Function.Surjective f) (h : Module.finrank R M ≤ Module.finrank R M') :
    Function.Bijective f := by
  cases subsingleton_or_nontrivial R
  -- TODO : figure out how to make `nontriviality` work here nicely
  · have := Module.subsingleton R M
    exact ⟨Function.injective_of_subsingleton f, hf⟩
  rcases finrank_le_iff_exists_linearMap.mp h with ⟨_, hi⟩
  exact OrzechProperty.bijective_of_surjective_of_injective _ _ hi hf

variable {R : Type*} [CommSemiring R] [StrongRankCondition R]
    {M : Type*} [AddCommMonoid M] [Module R M] [Module.Free R M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Free/Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Free/Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3684aa342bd506766b87c1c6326320c428a6bff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
