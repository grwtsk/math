# Module.Basis.span_repr_one_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dda4a72d32e3af50005b49613d390269e6ecbca8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 646,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a63f29a-80e6-422e-2d3a-a16c3d4f2d6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca3b7fab-de9c-667b-04dd-6fc2bf4d9441",
  "kind": "theorem",
  "lexical_name": "Module.Basis.span_repr_one_eq_top",
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
  "slug": "module-basis-span-repr-one-eq-top--2bac47d23e52180b062a2dd6",
  "source": {
    "blob": "dda4a72d32e3af50005b49613d390269e6ecbca8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 646,
    "path": "GRWTSK/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bac47d23e52180b062a2dd68ade3020f3eb4f7293578b13a4d07b9a6612d0ab",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca3b7fab-de9c-667b-04dd-6fc2bf4d9441`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 646–656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.Basis.span_repr_one_eq_top {R : Type*} [CommRing R] {A ι : Type*} [Ring A]
    [Nontrivial A] [Algebra R A] (e : Basis ι R A) :
    Ideal.span (Set.range (e.repr 1)) = ⊤ := by
  nontriviality R
  have : Module.Free R A := .of_basis e
  by_contra h
  obtain ⟨𝔪, h𝔪, hle⟩ := Ideal.exists_le_maximal _ h
  refine Module.FaithfullyFlat.submodule_ne_top h𝔪 (Submodule.eq_top_iff'.mpr fun a : A ↦ ?_)
  rw [← mul_one a, ← e.linearCombination_repr 1, Finsupp.linearCombination_apply, Finsupp.mul_sum]
  exact Submodule.sum_mem _ fun i _ ↦ by
    simpa using Submodule.smul_mem_smul (hle (Ideal.subset_span ⟨i, rfl⟩)) Submodule.mem_top
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant392cdb1848b2ace30538c2bbfe357ba7e88a402edc3af49dff8cd385ba685cae.lean#L646).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dda4a72d32e3af50005b49613d390269e6ecbca8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
