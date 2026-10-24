# Equiv.isIrreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7da5bbee-62ee-316d-d847-f298621b80fc",
  "kind": "lemma",
  "lexical_name": "Equiv.isIrreducible",
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
  "slug": "equiv-isirreducible--149be728e1241ba2851632a3",
  "source": {
    "blob": "ee8983cbe82c4f8ae46595b373f28cc6529e1303",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 181,
    "path": "GRWTSK/Algebra/LinearAlgebra/Irreducible/Variant3f6928d1be2905ad1af6506d8a51f1aaf141f3495641ae77f36513245d4ec1d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:149be728e1241ba2851632a3daa8a876907b9985be8853ad46d1d27bc7e8f096",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Irreducible/Variant3f6928d1be2905ad1af6506d8a51f1aaf141f3495641ae77f36513245d4ec1d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7da5bbee-62ee-316d-d847-f298621b80fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Equiv.isIrreducible {ι₂ M₂ N₂ : Type*}
    [AddCommGroup M₂] [Module R M₂] [AddCommGroup N₂] [Module R N₂]
    {P₂ : RootPairing ι₂ R M₂ N₂} (e : P.Equiv P₂) [P.IsIrreducible] :
    P₂.IsIrreducible where
  nontrivial := by
    have := IsIrreducible.nontrivial P
    exact e.weightEquiv.symm.nontrivial
  nontrivial' := by
    have := IsIrreducible.nontrivial' P
    exact e.coweightEquiv.nontrivial
  eq_top_of_invtSubmodule_reflection q h₁ h₂ := by
    set q' := q.map e.weightEquiv.symm.toLinearMap with hq'
    replace h₂ : q' ≠ ⊥ := by simpa [hq'] using h₂
    suffices q' = ⊤ by rwa [eq_comm, this, Submodule.map_eq_top_iff] at hq'
    suffices ∀ i, q' ∈ invtSubmodule (P.reflection i) from
      IsIrreducible.eq_top_of_invtSubmodule_reflection q' this h₂
    intro i
    rw [hq', ← e.weightEquiv_symm_conj_reflection, LinearEquiv.map_mem_invtSubmodule_conj_iff]
    exact h₁ (e.indexEquiv i)
  eq_top_of_invtSubmodule_coreflection q h₁ h₂ := by
    set q' := q.map e.coweightEquiv.toLinearMap with hq'
    replace h₂ : q' ≠ ⊥ := by simpa [hq'] using h₂
    suffices q' = ⊤ by rwa [eq_comm, this, Submodule.map_eq_top_iff] at hq'
    suffices ∀ i, q' ∈ invtSubmodule (P.coreflection i) from
      IsIrreducible.eq_top_of_invtSubmodule_coreflection q' this h₂
    intro i
    rw [hq', ← e.coweightEquiv_conj_coreflection, LinearEquiv.map_mem_invtSubmodule_conj_iff]
    exact h₁ (e.indexEquiv i)

/-- A nonempty irreducible root pairing is a root system. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Irreducible/Variant3f6928d1be2905ad1af6506d8a51f1aaf141f3495641ae77f36513245d4ec1d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Irreducible/Variant3f6928d1be2905ad1af6506d8a51f1aaf141f3495641ae77f36513245d4ec1d2.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee8983cbe82c4f8ae46595b373f28cc6529e1303` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
