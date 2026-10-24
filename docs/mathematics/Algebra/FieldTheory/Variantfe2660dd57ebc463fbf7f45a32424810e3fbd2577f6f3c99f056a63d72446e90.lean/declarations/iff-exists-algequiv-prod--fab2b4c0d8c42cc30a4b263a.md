# iff_exists_algEquiv_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a91dac631599d4754c822503fc46fec84c792281",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe2660dd57ebc463fbf7f45a32424810e3fbd2577f6f3c99f056a63d72446e90.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c8dbf15-85f2-0f61-440b-8b34e630b151",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e97ab273-edbe-65ac-4380-0a9e4ed4af9f",
  "kind": "theorem",
  "lexical_name": "iff_exists_algEquiv_prod",
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
  "slug": "iff-exists-algequiv-prod--fab2b4c0d8c42cc30a4b263a",
  "source": {
    "blob": "a91dac631599d4754c822503fc46fec84c792281",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 194,
    "path": "GRWTSK/Algebra/Field/Variantfe2660dd57ebc463fbf7f45a32424810e3fbd2577f6f3c99f056a63d72446e90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fab2b4c0d8c42cc30a4b263a9b99837855b6f54cd1078bfa4e9f45f2ceb2a4b0",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variantfe2660dd57ebc463fbf7f45a32424810e3fbd2577f6f3c99f056a63d72446e90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e97ab273-edbe-65ac-4380-0a9e4ed4af9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iff_exists_algEquiv_prod [EssFiniteType K A] :
    FormallyEtale K A ↔
      ∃ (I : Type u) (_ : Finite I) (Ai : I → Type u) (_ : ∀ i, Field (Ai i))
        (_ : ∀ i, Algebra K (Ai i)) (_ : A ≃ₐ[K] Π i, Ai i),
        ∀ i, Algebra.IsSeparable K (Ai i) := by
  classical
  constructor
  · intro H
    have := FormallyUnramified.finite_of_free K A
    have := FormallyUnramified.isReduced_of_field K A
    have : IsArtinianRing A := isArtinian_of_tower K inferInstance
    let v (i : MaximalSpectrum A) : A := (IsArtinianRing.equivPi A).symm (Pi.single i 1)
    rw [FormallyEtale.iff_of_equiv ((IsArtinianRing.equivPi A).restrictScalars K),
      FormallyEtale.pi_iff] at H
    exact ⟨_, inferInstance, _, _, _, (IsArtinianRing.equivPi A).restrictScalars K,
      fun I ↦ (iff_isSeparable _ _).mp inferInstance⟩
  · intro ⟨I, _, Ai, _, _, e, _⟩
    rw [FormallyEtale.iff_of_equiv e, FormallyEtale.pi_iff]
    exact fun I ↦ of_isSeparable K (Ai I)

/-- If `R` is an étale `k`-algebra over a separably closed field `k`, it is
isomorphic to the (finite) product of copies of `k` indexed by the prime spectrum of `R`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variantfe2660dd57ebc463fbf7f45a32424810e3fbd2577f6f3c99f056a63d72446e90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variantfe2660dd57ebc463fbf7f45a32424810e3fbd2577f6f3c99f056a63d72446e90.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a91dac631599d4754c822503fc46fec84c792281` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
