# dyadicMertensTwoPointMaximalEnergy_of_quadraticEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c1b3176-3730-aad8-ed77-7f9d103bdd69",
  "kind": "theorem",
  "lexical_name": "dyadicMertensTwoPointMaximalEnergy_of_quadraticEnvelope",
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
  "slug": "dyadicmertenstwopointmaximalenergy-of-quadraticenvelope--3ce548ff310387a5754d77de",
  "source": {
    "blob": "03ab1bb293e395f77da651848424439dbc345f34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 107,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ce548ff310387a5754d77de7dd77b512e65f43f0632d3b103a41bdf43802479",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c1b3176-3730-aad8-ed77-7f9d103bdd69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicMertensTwoPointMaximalEnergy_of_quadraticEnvelope
    {j : ℕ} {B : ℝ}
    (hquad : DyadicMertensTwoPointQuadraticEnvelope j B) :
    DyadicMertensTwoPointMaximalEnergy j B := by
  obtain ⟨hB, U, hshift, hbudget⟩ := hquad
  refine ⟨hB, ?_⟩
  unfold mertensTwoPointMaximalQuadraticEnergy
  calc
    (∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        mertensTwoPointPrefixMax j h ^ 2) ≤
      ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)), (U h) ^ 2 := by
        apply Finset.sum_le_sum
        intro h hh
        have hchar :=
          (mertensTwoPointShiftEnvelope_iff_prefixMax_le).1
            (hshift h (Finset.mem_Ico.mp hh).1
              (Finset.mem_Ico.mp hh).2)
        exact (sq_le_sq₀
          (mertensTwoPointPrefixMax_nonneg j h) hchar.1).2 hchar.2
    _ ≤ B ^ 2 * ((2 ^ (j + 1) : ℕ) : ℝ) := hbudget

/-- Exact finite equivalence between the canonical maximal statistic and the
existential quadratic-envelope interface. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03ab1bb293e395f77da651848424439dbc345f34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
