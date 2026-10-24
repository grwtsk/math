# IsPreLocalizingSequence.isLocalizingSequence_biInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9ea7521-a5b5-e697-344c-59090b46aa3e",
  "kind": "lemma",
  "lexical_name": "IsPreLocalizingSequence.isLocalizingSequence_biInf",
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
  "slug": "isprelocalizingsequence-islocalizingsequence-biinf--78e19ce992641c5d0f789fab",
  "source": {
    "blob": "3f335bebf685d02eec7b219b9232e9fc5f78a1fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 198,
    "path": "GRWTSK/Topology/GeneralTopology/LocalProperty/Variantc99395d73a9481894e73251533c2a22082628273a56761b0ccc1cd2259c5ecc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78e19ce992641c5d0f789fabf9e86f4b1c20b45637e47d9ffd90e17b1e3e44e0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalProperty/Variantc99395d73a9481894e73251533c2a22082628273a56761b0ccc1cd2259c5ecc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9ea7521-a5b5-e697-344c-59090b46aa3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPreLocalizingSequence.isLocalizingSequence_biInf
    [DenselyOrdered ι] [FirstCountableTopology ι] [NoMaxOrder ι]
    {τ : ℕ → Ω → WithTop ι} [IsRightContinuous 𝓕] (hτ : IsPreLocalizingSequence 𝓕 τ P) :
    IsLocalizingSequence 𝓕 (fun i ω ↦ ⨅ j ≥ i, τ j ω) P where
  isStoppingTime n := IsStoppingTime.biInf (Set.to_countable {j | j ≥ n})
    (fun j _ ↦ hτ.isStoppingTime j)
  mono := ae_of_all _ <| fun ω n m hnm ↦ iInf_le_iInf_of_subset <| fun k hk ↦ hnm.trans hk
  tendsto_top := by
    filter_upwards [hτ.tendsto_top] with ω hω
    replace hω := hω.liminf_eq
    rw [liminf_eq_iSup_iInf_of_nat] at hω
    rw [← hω]
    refine tendsto_atTop_iSup fun n m hnm ↦ ?_
    simp [iInf_le_iff]
    grind

/-- A process `X` satisfies a stable property `p` locally if there exists a pre-localizing
sequence `τ` for which the stopped processes of `fun i ↦ {ω | ⊥ < τ n ω}.indicator (X i)` satisfy
`p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalProperty/Variantc99395d73a9481894e73251533c2a22082628273a56761b0ccc1cd2259c5ecc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalProperty/Variantc99395d73a9481894e73251533c2a22082628273a56761b0ccc1cd2259c5ecc1.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f335bebf685d02eec7b219b9232e9fc5f78a1fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
