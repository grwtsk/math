# map_linearDependent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3dd91709-4ba1-0c96-d610-fdf8b30ca1c2",
  "kind": "theorem",
  "lexical_name": "map_linearDependent",
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
  "slug": "map-lineardependent--8ab4b3dd6f562cac522027b2",
  "source": {
    "blob": "c3f2c21f84302f4bbaaf13a036c17f479a8a94cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 837,
    "line": 815,
    "path": "GRWTSK/Algebra/LinearAlgebra/Alternating/Variantd6b8003a1f620fe362f90ad3e4f26af5054415f3ddd69cc06859b518d17a2ff4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ab4b3dd6f562cac522027b2decb17f11c968344f45846daf6663efdcffc1ff6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Alternating/Variantd6b8003a1f620fe362f90ad3e4f26af5054415f3ddd69cc06859b518d17a2ff4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dd91709-4ba1-0c96-d610-fdf8b30ca1c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 815–837.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_linearDependent {K : Type*} [Ring K] {M : Type*} [AddCommGroup M] [Module K M]
    {N : Type*} [AddCommGroup N] [Module K N] [NoZeroSMulDivisors K N] (f : AlternatingMap K M N ι)
    (v : ι → M) (h : ¬LinearIndependent K v) : f v = 0 := by
  obtain ⟨s, g, h, i, hi, hz⟩ := not_linearIndependent_iff.mp h
  letI := Classical.decEq ι
  suffices f (update v i (g i • v i)) = 0 by
    rw [f.map_smul, Function.update_eq_self, smul_eq_zero] at this
    exact Or.resolve_left this hz
  -- Porting note: Was `conv at h in .. => ..`.
  rw [← (funext fun x => ite_self (c := i = x) (d := Classical.decEq ι i x) (g x • v x))] at h
  rw [Finset.sum_ite, Finset.filter_eq, Finset.filter_ne, if_pos hi, Finset.sum_singleton,
    add_eq_zero_iff_eq_neg] at h
  rw [h, f.map_neg, f.map_update_sum, neg_eq_zero]; apply Finset.sum_eq_zero
  intro j hj
  obtain ⟨hij, _⟩ := Finset.mem_erase.mp hj
  rw [f.map_smul, f.map_update_self _ hij.symm, smul_zero]
#align alternating_map.map_linear_dependent AlternatingMap.map_linearDependent

section Fin

open Fin

/-- A version of `MultilinearMap.cons_add` for `AlternatingMap`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Alternating/Variantd6b8003a1f620fe362f90ad3e4f26af5054415f3ddd69cc06859b518d17a2ff4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Alternating/Variantd6b8003a1f620fe362f90ad3e4f26af5054415f3ddd69cc06859b518d17a2ff4.lean#L815).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3f2c21f84302f4bbaaf13a036c17f479a8a94cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
