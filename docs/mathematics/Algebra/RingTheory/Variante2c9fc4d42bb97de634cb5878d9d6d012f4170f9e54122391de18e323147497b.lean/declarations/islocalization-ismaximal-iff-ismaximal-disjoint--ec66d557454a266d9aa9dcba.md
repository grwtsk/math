# IsLocalization.isMaximal_iff_isMaximal_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a9613649e0abfe831ca64b6019ba7500d3c2e9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad9c6721-5be1-3412-8a69-71e19741154e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93ffdd5d-504c-b12e-d706-9bcc91172565",
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
  "slug": "islocalization-ismaximal-iff-ismaximal-disjoint--ec66d557454a266d9aa9dcba",
  "source": {
    "blob": "6a9613649e0abfe831ca64b6019ba7500d3c2e9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 165,
    "path": "GRWTSK/Algebra/Ring/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec66d557454a266d9aa9dcbae4daf9c1b0c8810e2e6cc92ddbbb534b31532ce5",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93ffdd5d-504c-b12e-d706-9bcc91172565`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalization.isMaximal_iff_isMaximal_disjoint [H : IsJacobsonRing R] (J : Ideal S) :
    J.IsMaximal ↔ (J.under R).IsMaximal ∧ y ∉ J.under R := by
  constructor
  · refine fun h => ⟨?_, fun hy =>
      h.ne_top (Ideal.eq_top_of_isUnit_mem _ hy (map_units _ ⟨y, Submonoid.mem_powers _⟩))⟩
    have hJ : J.IsPrime := IsMaximal.isPrime h
    rw [isPrime_iff_isPrime_disjoint (Submonoid.powers y)] at hJ
    have : y ∉ (J.under R).1 := Set.disjoint_left.1 hJ.right (Submonoid.mem_powers _)
    rw [← H.out hJ.left.isRadical, jacobson, Submodule.mem_toAddSubmonoid, Ideal.mem_sInf] at this
    push Not at this
    rcases this with ⟨I, ⟨hJI, hIm⟩, hI'⟩
    convert! hIm
    by_cases hJ : J = I.map (algebraMap R S)
    · rw [hJ, under_map_of_isPrime_disjoint (powers y) S hIm.isPrime]
      rwa [disjoint_powers_iff_notMem_of_isPrime]
    · have hI_p : (I.map (algebraMap R S)).IsPrime := by
        refine isPrime_of_isPrime_disjoint (powers y) _ I hIm.isPrime ?_
        rwa [disjoint_powers_iff_notMem_of_isPrime]
      have : J ≤ I.map (algebraMap R S) := map_under (Submonoid.powers y) S J ▸ map_mono hJI
      exact absurd (h.1.2 _ (lt_of_le_of_ne this hJ)) hI_p.1
  · simp only [Ideal.mem_comap, and_imp]
    exact (fun _ _ ↦ isMaximal_of_isMaximal_under (powers y) S J)

/-- Maximal ideals in the localization at `y` correspond to maximal ideals in the original ring `R`
that don't contain `y`.
This lemma gives the correspondence in the particular case of an ideal and its map.
See `le_relIso_of_maximal` for the more general statement, and the reverse of this implication. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a9613649e0abfe831ca64b6019ba7500d3c2e9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
