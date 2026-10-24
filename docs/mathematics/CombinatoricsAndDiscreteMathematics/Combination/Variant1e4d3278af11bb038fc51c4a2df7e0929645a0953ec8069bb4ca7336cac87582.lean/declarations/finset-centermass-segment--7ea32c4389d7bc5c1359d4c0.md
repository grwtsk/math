# Finset.centerMass_segment'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48b14d48-ac24-ea8b-9431-d7f5e0d134a8",
  "kind": "theorem",
  "lexical_name": "Finset.centerMass_segment'",
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
  "slug": "finset-centermass-segment--7ea32c4389d7bc5c1359d4c0",
  "source": {
    "blob": "abb84d7d7f8c8329734da741d0c555674487128c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 99,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variant1e4d3278af11bb038fc51c4a2df7e0929645a0953ec8069bb4ca7336cac87582.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ea32c4389d7bc5c1359d4c0326d4c3375d2a9445a71499d8cfba70a3bf34674",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Combination/Variant1e4d3278af11bb038fc51c4a2df7e0929645a0953ec8069bb4ca7336cac87582.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48b14d48-ac24-ea8b-9431-d7f5e0d134a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finset.centerMass_segment' (s : Finset ι) (t : Finset ι') (ws : ι → R) (zs : ι → E)
    (wt : ι' → R) (zt : ι' → E) (hws : ∑ i ∈ s, ws i = 1) (hwt : ∑ i ∈ t, wt i = 1) (a b : R)
    (hab : a + b = 1) : a • s.centerMass ws zs + b • t.centerMass wt zt = (s.disjSum t).centerMass
    (Sum.elim (fun i => a * ws i) fun j => b * wt j) (Sum.elim zs zt) := by
  rw [s.centerMass_eq_of_sum_1 _ hws, t.centerMass_eq_of_sum_1 _ hwt, smul_sum, smul_sum, ←
    Finset.sum_sumElim, Finset.centerMass_eq_of_sum_1]
  · congr with ⟨⟩ <;> simp only [Sum.elim_inl, Sum.elim_inr, mul_smul]
  · rw [sum_sumElim, ← mul_sum, ← mul_sum, hws, hwt, mul_one, mul_one, hab]

/-- A convex combination of two centers of mass is a center of mass as well. This version
works if two centers of mass share the set of original points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variant1e4d3278af11bb038fc51c4a2df7e0929645a0953ec8069bb4ca7336cac87582.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variant1e4d3278af11bb038fc51c4a2df7e0929645a0953ec8069bb4ca7336cac87582.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abb84d7d7f8c8329734da741d0c555674487128c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
