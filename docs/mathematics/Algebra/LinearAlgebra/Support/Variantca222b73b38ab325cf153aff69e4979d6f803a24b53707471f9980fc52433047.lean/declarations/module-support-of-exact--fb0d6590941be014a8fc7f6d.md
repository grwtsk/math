# Module.support_of_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d949b48-64ab-8348-b020-a6d3ef84b9d9",
  "kind": "lemma",
  "lexical_name": "Module.support_of_exact",
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
  "slug": "module-support-of-exact--fb0d6590941be014a8fc7f6d",
  "source": {
    "blob": "bd342f966bb6ed409a6ca538a13a7883fb33050a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 184,
    "path": "GRWTSK/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb0d6590941be014a8fc7f6db15968f1b131d2484fcce13a4ff5e141753dcabc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d949b48-64ab-8348-b020-a6d3ef84b9d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.support_of_exact (h : Function.Exact f g)
    (hf : Function.Injective f) (hg : Function.Surjective g) :
    Module.support R N = Module.support R M ∪ Module.support R P := by
  refine subset_antisymm ?_ (Set.union_subset (Module.support_subset_of_injective f hf)
    (Module.support_subset_of_surjective g hg))
  intro x
  contrapose
  simp only [Set.mem_union, not_or, and_imp, notMem_support_iff']
  intro H₁ H₂ m
  obtain ⟨r, hr, e₁⟩ := H₂ (g m)
  rw [← map_smul, h] at e₁
  obtain ⟨m', hm'⟩ := e₁
  obtain ⟨s, hs, e₁⟩ := H₁ m'
  exact ⟨_, x.asIdeal.primeCompl.mul_mem hs hr, by rw [mul_smul, ← hm', ← map_smul, e₁, map_zero]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd342f966bb6ed409a6ca538a13a7883fb33050a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
