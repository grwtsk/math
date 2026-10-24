# ker_noncommProd_eq_of_supIndep_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e3f031bfb174698ae1e09f2a42275194dac73e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 349,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85c97cfd74d48a76dadab8706bb9f4b957aaeefe0a84141ca8045b98ef8e10f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a4f387e-e99e-0243-0762-e0ea15507042",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39a65223-0c6b-bba1-d71f-907a3fa60c81",
  "kind": "theorem",
  "lexical_name": "ker_noncommProd_eq_of_supIndep_ker",
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
  "slug": "ker-noncommprod-eq-of-supindep-ker--4fae76936c8d67a8af647030",
  "source": {
    "blob": "2e3f031bfb174698ae1e09f2a42275194dac73e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 349,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant85c97cfd74d48a76dadab8706bb9f4b957aaeefe0a84141ca8045b98ef8e10f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fae76936c8d67a8af647030a546ee7f3df1a4f15fb90f0e6724389ac138e74b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant85c97cfd74d48a76dadab8706bb9f4b957aaeefe0a84141ca8045b98ef8e10f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39a65223-0c6b-bba1-d71f-907a3fa60c81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ker_noncommProd_eq_of_supIndep_ker [FiniteDimensional K V] {ι : Type*} {f : ι → V →ₗ[K] V}
    (s : Finset ι) (comm) (h : s.SupIndep fun i ↦ ker (f i)) :
    ker (s.noncommProd f comm) = ⨆ i ∈ s, ker (f i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp [Module.End.one_eq_id]
  | insert i s hi ih =>
    replace ih : ker (Finset.noncommProd s f <| Set.Pairwise.mono (s.subset_insert i) comm) =
        ⨆ x ∈ s, ker (f x) := ih _ (h.subset (s.subset_insert i))
    rw [Finset.noncommProd_insert_of_notMem _ _ _ _ hi, Module.End.mul_eq_comp,
      ker_comp_eq_of_commute_of_disjoint_ker]
    · simp_rw [Finset.mem_insert_coe, iSup_insert, Finset.mem_coe, ih]
    · exact s.noncommProd_commute _ _ _ fun j hj ↦
        comm (s.mem_insert_self i) (Finset.mem_insert_of_mem hj) (by aesop)
    · replace h := Finset.supIndep_iff_disjoint_erase.mp h i (s.mem_insert_self i)
      simpa [ih, hi, Finset.sup_eq_iSup] using h

end DivisionRing

end LinearMap

namespace LinearEquiv

open Module

variable [DivisionRing K] [AddCommGroup V] [Module K V]
variable [FiniteDimensional K V]

/-- The linear equivalence corresponding to an injective endomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant85c97cfd74d48a76dadab8706bb9f4b957aaeefe0a84141ca8045b98ef8e10f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant85c97cfd74d48a76dadab8706bb9f4b957aaeefe0a84141ca8045b98ef8e10f4.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e3f031bfb174698ae1e09f2a42275194dac73e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
