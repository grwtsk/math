# Module.mem_support_iff_nontrivial_residueField_tensorProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1060639082082facdd4775b9cf03982490cab2fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7aad1df3c0b0105a55d98d5b2fa521f9ac73b5ad63267d7ac6a23f47c5e1d907.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05da8eb0-782a-43bc-dd57-32a53ce774ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eac93304-304c-f942-5bba-9089361af80b",
  "kind": "lemma",
  "lexical_name": "Module.mem_support_iff_nontrivial_residueField_tensorProduct",
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
  "slug": "module-mem-support-iff-nontrivial-residuefield-tensorproduct--71f60dc5256f3f0be2659f0d",
  "source": {
    "blob": "1060639082082facdd4775b9cf03982490cab2fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 112,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant7aad1df3c0b0105a55d98d5b2fa521f9ac73b5ad63267d7ac6a23f47c5e1d907.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71f60dc5256f3f0be2659f0d5dbe969b3a0ded4db3a1c944bf69acf32dd1b46b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant7aad1df3c0b0105a55d98d5b2fa521f9ac73b5ad63267d7ac6a23f47c5e1d907.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eac93304-304c-f942-5bba-9089361af80b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.mem_support_iff_nontrivial_residueField_tensorProduct [Module.Finite R M]
    (p : PrimeSpectrum R) :
    p ∈ Module.support R M ↔ Nontrivial (p.asIdeal.ResidueField ⊗[R] M) := by
  let K := p.asIdeal.ResidueField
  let e := (AlgebraTensorModule.cancelBaseChange R (Localization.AtPrime p.asIdeal) K K M).symm
  rw [e.nontrivial_congr, Module.mem_support_iff,
    (LocalizedModule.equivTensorProduct p.asIdeal.primeCompl M).nontrivial_congr,
    ← not_iff_not, not_nontrivial_iff_subsingleton, not_nontrivial_iff_subsingleton,
    IsLocalRing.subsingleton_tensorProduct]

open Function in
/--
Given `M₁ → M₂ → M₃ → 0` and `N₁ → N₂ → N₃ → 0`,
if `M₁ ⊗ N₃ → M₂ ⊗ N₃` and `M₂ ⊗ N₁ → M₂ ⊗ N₂` are both injective,
then `M₃ ⊗ N₁ → M₃ ⊗ N₂` is also injective.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant7aad1df3c0b0105a55d98d5b2fa521f9ac73b5ad63267d7ac6a23f47c5e1d907.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant7aad1df3c0b0105a55d98d5b2fa521f9ac73b5ad63267d7ac6a23f47c5e1d907.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1060639082082facdd4775b9cf03982490cab2fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
