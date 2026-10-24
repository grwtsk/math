# exists_continuous_sum_one_of_isOpen_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23afd05f-4fa4-c005-3fcb-1e3d10274f27",
  "kind": "theorem",
  "lexical_name": "exists_continuous_sum_one_of_isOpen_isCompact",
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
  "slug": "exists-continuous-sum-one-of-isopen-iscompact--7260fad90d8c9a617998f255",
  "source": {
    "blob": "bd90182ed9dfeb4dd376fad5798aa979b6b17af9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 676,
    "line": 659,
    "path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant33f82cf50b674e55b8d62af14be086ea5169706e457e18116adb395eb2c38819.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7260fad90d8c9a617998f25514462cec545b4321ac70be4ab25985b0dce99f11",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartitionOfUnity/Variant33f82cf50b674e55b8d62af14be086ea5169706e457e18116adb395eb2c38819.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23afd05f-4fa4-c005-3fcb-1e3d10274f27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 659–676.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_continuous_sum_one_of_isOpen_isCompact [T2Space X] [LocallyCompactSpace X]
    {n : ℕ} {t : Set X} {s : Fin n → Set X} (hs : ∀ (i : Fin n), IsOpen (s i)) (htcp : IsCompact t)
    (hst : t ⊆ ⋃ i, s i) :
    ∃ f : Fin n → C(X, ℝ), (∀ (i : Fin n), tsupport (f i) ⊆ s i) ∧ EqOn (∑ i, f i) 1 t
      ∧ (∀ (i : Fin n), ∀ (x : X), f i x ∈ Icc (0 : ℝ) 1)
      ∧ (∀ (i : Fin n), HasCompactSupport (f i)) := by
  obtain ⟨f, hfsub, hfcp⟩ := PartitionOfUnity.exists_isSubordinate_of_locallyFinite_t2space htcp s
    hs (locallyFinite_of_finite _) hst
  use f
  refine ⟨fun i ↦ hfsub i, ?_, ?_, fun i => hfcp i⟩
  · intro x hx
    simp only [Finset.sum_apply, Pi.one_apply]
    have h := f.sum_eq_one' x hx
    rw [finsum_eq_sum (fun i => (f.toFun i) x)
      (Finite.subset finite_univ (subset_univ (support fun i ↦ (f.toFun i) x)))] at h
    rwa [Fintype.sum_subset (by simp)] at h
  intro i x
  exact ⟨f.nonneg i x, PartitionOfUnity.le_one f i x⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartitionOfUnity/Variant33f82cf50b674e55b8d62af14be086ea5169706e457e18116adb395eb2c38819.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant33f82cf50b674e55b8d62af14be086ea5169706e457e18116adb395eb2c38819.lean#L659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd90182ed9dfeb4dd376fad5798aa979b6b17af9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
