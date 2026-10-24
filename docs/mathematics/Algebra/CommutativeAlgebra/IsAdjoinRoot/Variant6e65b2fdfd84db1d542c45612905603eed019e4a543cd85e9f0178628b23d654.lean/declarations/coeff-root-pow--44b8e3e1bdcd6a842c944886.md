# coeff_root_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1a48e2502d24d9469b08075dd030abe64a293090",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 525,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e65b2fdfd84db1d542c45612905603eed019e4a543cd85e9f0178628b23d654.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dceac575-311b-dae1-2e93-ff8768163b04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fc072cc-7c28-9dc5-9b61-858a854cb870",
  "kind": "theorem",
  "lexical_name": "coeff_root_pow",
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
  "slug": "coeff-root-pow--44b8e3e1bdcd6a842c944886",
  "source": {
    "blob": "1a48e2502d24d9469b08075dd030abe64a293090",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 525,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant6e65b2fdfd84db1d542c45612905603eed019e4a543cd85e9f0178628b23d654.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44b8e3e1bdcd6a842c9448869d82e24736402f26b93ad0820ce7137836a33b04",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant6e65b2fdfd84db1d542c45612905603eed019e4a543cd85e9f0178628b23d654.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fc072cc-7c28-9dc5-9b61-858a854cb870`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_root_pow {n} (hn : n < natDegree f) : h.coeff (h.root ^ n) = Pi.single n 1 := by
  ext i
  rw [coeff_apply]
  split_ifs with hi
  · calc
      h.basis.repr (h.root ^ n) ⟨i, _⟩ = h.basis.repr (h.basis ⟨n, hn⟩) ⟨i, hi⟩ := by
        rw [h.basis_apply, Fin.val_mk]
      _ = Pi.single (M := fun _ => R) ((⟨n, hn⟩ : Fin _) : ℕ) (1 : (fun _ => R) n)
        ↑(⟨i, _⟩ : Fin _) := by
        rw [h.basis.repr_self, ← Finsupp.single_eq_pi_single,
          Finsupp.single_apply_left Fin.val_injective]
      _ = Pi.single (M := fun _ => R) n 1 i := by rw [Fin.val_mk, Fin.val_mk]
  · rw [Pi.single_eq_of_ne]
    rintro rfl
    simp [hi] at hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant6e65b2fdfd84db1d542c45612905603eed019e4a543cd85e9f0178628b23d654.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant6e65b2fdfd84db1d542c45612905603eed019e4a543cd85e9f0178628b23d654.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a48e2502d24d9469b08075dd030abe64a293090` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
