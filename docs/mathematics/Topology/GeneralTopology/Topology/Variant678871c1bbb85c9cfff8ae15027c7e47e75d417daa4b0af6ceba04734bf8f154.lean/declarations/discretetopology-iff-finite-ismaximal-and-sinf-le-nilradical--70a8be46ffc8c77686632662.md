# discreteTopology_iff_finite_isMaximal_and_sInf_le_nilradical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f0bb5df-a752-cfc1-8823-bd7c9212d793",
  "kind": "theorem",
  "lexical_name": "discreteTopology_iff_finite_isMaximal_and_sInf_le_nilradical",
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
  "slug": "discretetopology-iff-finite-ismaximal-and-sinf-le-nilradical--70a8be46ffc8c77686632662",
  "source": {
    "blob": "3a11176296f7ba9ca555235e23b54d42f95b5146",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 317,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant678871c1bbb85c9cfff8ae15027c7e47e75d417daa4b0af6ceba04734bf8f154.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70a8be46ffc8c776866326629c45c8de97a62aa17bfc8140ed3ee1239de5600c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant678871c1bbb85c9cfff8ae15027c7e47e75d417daa4b0af6ceba04734bf8f154.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f0bb5df-a752-cfc1-8823-bd7c9212d793`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discreteTopology_iff_finite_isMaximal_and_sInf_le_nilradical :
    letI s := {I : Ideal R | I.IsMaximal}
    DiscreteTopology (PrimeSpectrum R) ↔ Finite s ∧ sInf s ≤ nilradical R := by
  rw [discreteTopology_iff_finite_and_krullDimLE_zero, Ring.krullDimLE_zero_iff,
    (equivSubtype R).finite_iff, ← Set.coe_setOf, Set.finite_coe_iff, Set.finite_coe_iff]
  refine ⟨fun h ↦ ⟨h.1.subset fun _ h ↦ h.isPrime, nilradical_eq_sInf R ▸ sInf_le_sInf h.2⟩,
    fun ⟨fin, le⟩ ↦ ?_⟩
  have hpm (I : Ideal R) (hI : I.IsPrime): I.IsMaximal := by
    replace le := le.trans (nilradical_le_prime I)
    rw [← fin.coe_toFinset, ← Finset.inf_id_eq_sInf, hI.inf_le'] at le
    have ⟨M, hM, hMI⟩ := le
    rw [fin.mem_toFinset] at hM
    rwa [← hM.eq_of_le hI.1 hMI]
  exact ⟨fin.subset hpm, hpm⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant678871c1bbb85c9cfff8ae15027c7e47e75d417daa4b0af6ceba04734bf8f154.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant678871c1bbb85c9cfff8ae15027c7e47e75d417daa4b0af6ceba04734bf8f154.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a11176296f7ba9ca555235e23b54d42f95b5146` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
