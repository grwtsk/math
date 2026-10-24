# IsStable.locally_and_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d2bc82f-b4ea-96c3-0aab-07b2c0075f03",
  "kind": "lemma",
  "lexical_name": "IsStable.locally_and_iff",
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
  "slug": "isstable-locally-and-iff--67cbbdb1341e1f77e2a749a0",
  "source": {
    "blob": "3f335bebf685d02eec7b219b9232e9fc5f78a1fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 169,
    "path": "GRWTSK/Topology/GeneralTopology/LocalProperty/Variantc99395d73a9481894e73251533c2a22082628273a56761b0ccc1cd2259c5ecc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67cbbdb1341e1f77e2a749a02dc0d494087da92970ccf78a4f0d492ef4ef8b6b",
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

Occurrence: `result:4d2bc82f-b4ea-96c3-0aab-07b2c0075f03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsStable.locally_and_iff (hp : IsStable 𝓕 p) (hq : IsStable 𝓕 q) :
    Locally (fun Y ↦ p Y ∧ q Y) 𝓕 X P ↔ Locally p 𝓕 X P ∧ Locally q 𝓕 X P := by
  refine ⟨Locally.of_and, fun ⟨hpX, hqX⟩ ↦
    ⟨_, hpX.isLocalizingSequence_localSeq.min hqX.isLocalizingSequence_localSeq, fun n ↦ ?_⟩⟩
  suffices ∀ (p q : (ι → Ω → E) → Prop) (hp : IsStable 𝓕 p) (hq : IsStable 𝓕 q)
      (hpX : Locally p 𝓕 X P) (hqX : Locally q 𝓕 X P),
      p (stoppedProcess (fun i ↦ {ω | ⊥ < (hpX.localSeq ⊓ hqX.localSeq) n ω}.indicator (X i))
      ((hpX.localSeq ⊓ hqX.localSeq) n)) by
    refine ⟨this p q hp hq hpX hqX, ?_⟩
    simp_rw [inf_comm hpX.localSeq]
    exact this q p hq hp hqX hpX
  intro p q hp hq hpX hqX
  convert!
    hp _ (hpX.stoppedProcess_localSeq n) _ <|
      hqX.isLocalizingSequence_localSeq.isStoppingTime n using 1
  ext i ω
  simp_rw [stoppedProcess_indicator_comm, Pi.inf_apply, lt_inf_iff, inf_comm (hpX.localSeq n)]
  rw [← stoppedProcess_stoppedProcess, ← stoppedProcess_indicator_comm, Set.ofPred_and,
    Set.inter_comm]
  simp_rw [← Set.indicator_indicator]
  rfl

end LinearOrder

section ConditionallyCompleteLinearOrderBot

variable [ConditionallyCompleteLinearOrderBot ι] [TopologicalSpace ι] [OrderTopology ι]
  {𝓕 : Filtration ι mΩ} {X : ι → Ω → E} {p q : (ι → Ω → E) → Prop}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalProperty/Variantc99395d73a9481894e73251533c2a22082628273a56761b0ccc1cd2259c5ecc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalProperty/Variantc99395d73a9481894e73251533c2a22082628273a56761b0ccc1cd2259c5ecc1.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f335bebf685d02eec7b219b9232e9fc5f78a1fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
