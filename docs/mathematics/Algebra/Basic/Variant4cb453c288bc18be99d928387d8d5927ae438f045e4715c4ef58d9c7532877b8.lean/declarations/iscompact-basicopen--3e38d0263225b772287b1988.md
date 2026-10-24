# isCompact_basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a20246e6-e34c-ef5d-e6a1-23cec8cd5d82",
  "kind": "theorem",
  "lexical_name": "isCompact_basicOpen",
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
  "slug": "iscompact-basicopen--3e38d0263225b772287b1988",
  "source": {
    "blob": "28264c3f984918cdf2cc035f1a92c2286ed2594d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 872,
    "line": 845,
    "path": "GRWTSK/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e38d0263225b772287b198823594e3ad0e1b6263ce25fa7335a69c3bb366ffe",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a20246e6-e34c-ef5d-e6a1-23cec8cd5d82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 845–872.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompact_basicOpen (f : R) : IsCompact (basicOpen f : Set (PrimeSpectrum R)) :=
  isCompact_of_finite_subfamily_closed fun {ι} Z hZc hZ => by
    let I : ι → Ideal R := fun i => vanishingIdeal (Z i)
    have hI : ∀ i, Z i = zeroLocus (I i) := fun i => by
      simpa only [zeroLocus_vanishingIdeal_eq_closure] using (hZc i).closure_eq.symm
    rw [basicOpen_eq_zeroLocus_compl f, Set.inter_comm, ← Set.diff_eq, Set.diff_eq_empty,
      funext hI, ← zeroLocus_iSup] at hZ
    obtain ⟨n, hn⟩ : f ∈ (⨆ i : ι, I i).radical := by
      rw [← vanishingIdeal_zeroLocus_eq_radical]
      apply vanishingIdeal_anti_mono hZ
      exact subset_vanishingIdeal_zeroLocus {f} (Set.mem_singleton f)
    rcases Submodule.exists_finset_of_mem_iSup I hn with ⟨s, hs⟩
    use s
    -- Using simp_rw here, because `hI` and `zeroLocus_iSup` need to be applied underneath binders
    simp_rw [basicOpen_eq_zeroLocus_compl f, Set.inter_comm (zeroLocus {f})ᶜ, ← Set.diff_eq,
      Set.diff_eq_empty]
    rw [show (Set.iInter fun i => Set.iInter fun (_ : i ∈ s) => Z i) =
      Set.iInter fun i => Set.iInter fun (_ : i ∈ s) => zeroLocus (I i) from congr_arg _
        (funext fun i => congr_arg _ (funext fun _ => hI i))]
    simp_rw [← zeroLocus_iSup]
    rw [← zeroLocus_radical]
    -- this one can't be in `simp_rw` because it would loop
    apply zeroLocus_anti_mono
    rw [Set.singleton_subset_iff]
    exact ⟨n, hs⟩
#align prime_spectrum.is_compact_basic_open PrimeSpectrum.isCompact_basicOpen

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean#L845).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28264c3f984918cdf2cc035f1a92c2286ed2594d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
