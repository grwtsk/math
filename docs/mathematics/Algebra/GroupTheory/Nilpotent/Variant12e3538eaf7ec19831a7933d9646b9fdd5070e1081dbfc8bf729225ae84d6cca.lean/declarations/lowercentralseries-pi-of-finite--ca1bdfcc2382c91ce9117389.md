# lowerCentralSeries_pi_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8790e36-4ced-1a4b-4c33-ce2801e5653e",
  "kind": "theorem",
  "lexical_name": "lowerCentralSeries_pi_of_finite",
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
  "slug": "lowercentralseries-pi-of-finite--ca1bdfcc2382c91ce9117389",
  "source": {
    "blob": "ccfb097d3d7c128cba953d03f9c093ded8e0d998",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 805,
    "line": 790,
    "path": "GRWTSK/Algebra/GroupTheory/Nilpotent/Variant12e3538eaf7ec19831a7933d9646b9fdd5070e1081dbfc8bf729225ae84d6cca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca1bdfcc2382c91ce9117389c90619a3c17a1d6da2c538a15e10e47bdaddfa23",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Nilpotent/Variant12e3538eaf7ec19831a7933d9646b9fdd5070e1081dbfc8bf729225ae84d6cca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8790e36-4ced-1a4b-4c33-ce2801e5653e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 790–805.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowerCentralSeries_pi_of_finite [Finite η] (n : ℕ) :
    lowerCentralSeries (∀ i, Gs i) n = Subgroup.pi Set.univ
      fun i => lowerCentralSeries (Gs i) n := by
  let pi := fun f : ∀ i, Subgroup (Gs i) => Subgroup.pi Set.univ f
  induction' n with n ih
  · simp [pi_top]
  · calc
      lowerCentralSeries (∀ i, Gs i) n.succ = ⁅lowerCentralSeries (∀ i, Gs i) n, ⊤⁆ := rfl
      _ = ⁅pi fun i => lowerCentralSeries (Gs i) n, ⊤⁆ := by rw [ih]
      _ = ⁅pi fun i => lowerCentralSeries (Gs i) n, pi fun i => ⊤⁆ := by simp [pi_top]
      _ = pi fun i => ⁅lowerCentralSeries (Gs i) n, ⊤⁆ := (commutator_pi_pi_of_finite _ _)
      _ = pi fun i => lowerCentralSeries (Gs i) n.succ := rfl

#align lower_central_series_pi_of_finite lowerCentralSeries_pi_of_finite

/-- n-ary products of nilpotent groups are nilpotent -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Nilpotent/Variant12e3538eaf7ec19831a7933d9646b9fdd5070e1081dbfc8bf729225ae84d6cca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Nilpotent/Variant12e3538eaf7ec19831a7933d9646b9fdd5070e1081dbfc8bf729225ae84d6cca.lean#L790).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccfb097d3d7c128cba953d03f9c093ded8e0d998` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
