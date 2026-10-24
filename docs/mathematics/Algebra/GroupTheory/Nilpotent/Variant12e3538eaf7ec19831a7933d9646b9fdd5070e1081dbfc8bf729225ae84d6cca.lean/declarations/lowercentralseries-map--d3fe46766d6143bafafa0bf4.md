# lowerCentralSeries.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ac789a3-c8fc-0eaa-2d4c-925e464e98a7",
  "kind": "theorem",
  "lexical_name": "lowerCentralSeries.map",
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
  "slug": "lowercentralseries-map--d3fe46766d6143bafafa0bf4",
  "source": {
    "blob": "ccfb097d3d7c128cba953d03f9c093ded8e0d998",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 501,
    "path": "GRWTSK/Algebra/GroupTheory/Nilpotent/Variant12e3538eaf7ec19831a7933d9646b9fdd5070e1081dbfc8bf729225ae84d6cca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3fe46766d6143bafafa0bf46b228cd3496eef7d09782f667eec26df3b8e4134",
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

Occurrence: `result:7ac789a3-c8fc-0eaa-2d4c-925e464e98a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowerCentralSeries.map {H : Type*} [Group H] (f : G →* H) (n : ℕ) :
    Subgroup.map f (lowerCentralSeries G n) ≤ lowerCentralSeries H n := by
  induction' n with d hd
  · simp [Nat.zero_eq]
  · rintro a ⟨x, hx : x ∈ lowerCentralSeries G d.succ, rfl⟩
    refine closure_induction hx ?_ (by simp [f.map_one, Subgroup.one_mem _])
      (fun y z hy hz => by simp [MonoidHom.map_mul, Subgroup.mul_mem _ hy hz]) (fun y hy => by
        rw [f.map_inv]; exact Subgroup.inv_mem _ hy)
    rintro a ⟨y, hy, z, ⟨-, rfl⟩⟩
    apply mem_closure.mpr
    exact fun K hK => hK ⟨f y, hd (mem_map_of_mem f hy), by simp [commutatorElement_def]⟩
#align lower_central_series.map lowerCentralSeries.map

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Nilpotent/Variant12e3538eaf7ec19831a7933d9646b9fdd5070e1081dbfc8bf729225ae84d6cca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Nilpotent/Variant12e3538eaf7ec19831a7933d9646b9fdd5070e1081dbfc8bf729225ae84d6cca.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccfb097d3d7c128cba953d03f9c093ded8e0d998` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
