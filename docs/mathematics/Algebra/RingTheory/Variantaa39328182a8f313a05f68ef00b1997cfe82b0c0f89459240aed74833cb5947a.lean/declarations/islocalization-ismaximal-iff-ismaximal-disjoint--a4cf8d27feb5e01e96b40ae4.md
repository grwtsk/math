# IsLocalization.isMaximal_iff_isMaximal_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59e34e0f184baf6a3ede242a0820c02ea4e616a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b771066-98a9-ffa7-c655-76376f460c52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:304c2b19-bacb-4797-0eb4-3ab906fbb15d",
  "kind": "theorem",
  "lexical_name": "IsLocalization.isMaximal_iff_isMaximal_disjoint",
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
  "slug": "islocalization-ismaximal-iff-ismaximal-disjoint--a4cf8d27feb5e01e96b40ae4",
  "source": {
    "blob": "59e34e0f184baf6a3ede242a0820c02ea4e616a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 158,
    "path": "GRWTSK/Algebra/Ring/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4cf8d27feb5e01e96b40ae4c9ab258c28396494fb07b2d2396792ff9ef2f646",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:304c2b19-bacb-4797-0eb4-3ab906fbb15d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalization.isMaximal_iff_isMaximal_disjoint [H : IsJacobsonRing R] (J : Ideal S) :
    J.IsMaximal ↔ (comap (algebraMap R S) J).IsMaximal ∧ y ∉ Ideal.comap (algebraMap R S) J := by
  constructor
  · refine fun h => ⟨?_, fun hy =>
      h.ne_top (Ideal.eq_top_of_isUnit_mem _ hy (map_units _ ⟨y, Submonoid.mem_powers _⟩))⟩
    have hJ : J.IsPrime := IsMaximal.isPrime h
    rw [isPrime_iff_isPrime_disjoint (Submonoid.powers y)] at hJ
    have : y ∉ (comap (algebraMap R S) J).1 := Set.disjoint_left.1 hJ.right (Submonoid.mem_powers _)
    rw [← H.out hJ.left.isRadical, jacobson, Submodule.mem_toAddSubmonoid, Ideal.mem_sInf] at this
    push_neg at this
    rcases this with ⟨I, hI, hI'⟩
    convert hI.right
    by_cases hJ : J = I.map (algebraMap R S)
    · rw [hJ, comap_map_of_isPrime_disjoint (powers y) S I (IsMaximal.isPrime hI.right)]
      rwa [disjoint_powers_iff_notMem y hI.right.isPrime.isRadical]
    · have hI_p : (I.map (algebraMap R S)).IsPrime := by
        refine isPrime_of_isPrime_disjoint (powers y) _ I hI.right.isPrime ?_
        rwa [disjoint_powers_iff_notMem y hI.right.isPrime.isRadical]
      have : J ≤ I.map (algebraMap R S) := map_comap (Submonoid.powers y) S J ▸ map_mono hI.left
      exact absurd (h.1.2 _ (lt_of_le_of_ne this hJ)) hI_p.1
  · refine fun h => ⟨⟨fun hJ => h.1.ne_top (eq_top_iff.2 ?_), fun I hI => ?_⟩⟩
    · rwa [eq_top_iff, ← (IsLocalization.orderEmbedding (powers y) S).le_iff_le] at hJ
    · have := congr_arg (Ideal.map (algebraMap R S)) (h.1.1.2 _ ⟨comap_mono (le_of_lt hI), ?_⟩)
      · rwa [map_comap (powers y) S I, Ideal.map_top] at this
      refine fun hI' => hI.right ?_
      rw [← map_comap (powers y) S I, ← map_comap (powers y) S J]
      exact map_mono hI'

/-- If `R` is a Jacobson ring, then maximal ideals in the localization at `y`
correspond to maximal ideals in the original ring `R` that don't contain `y`.
This lemma gives the correspondence in the particular case of an ideal and its map.
See `le_relIso_of_maximal` for the more general statement, and the reverse of this implication -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e34e0f184baf6a3ede242a0820c02ea4e616a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
