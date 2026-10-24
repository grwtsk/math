# zero_atom_le_resolventMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb4267aa789c6816f773b35545f73c2f4b681f25",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6c73715-e169-fdaf-8ddf-cbebe757c0a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e31bc5e4-05a7-7b45-e53c-4be32bd5786b",
  "kind": "theorem",
  "lexical_name": "zero_atom_le_resolventMass",
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
  "slug": "zero-atom-le-resolventmass--f3ea1b2977c41230faaa45de",
  "source": {
    "blob": "bb4267aa789c6816f773b35545f73c2f4b681f25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 94,
    "path": "GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3ea1b2977c41230faaa45de9d50187bfbe2b730dd3fae443db4164757294647",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e31bc5e4-05a7-7b45-e53c-4be32bd5786b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_atom_le_resolventMass (ν : Measure ℝ≥0) [IsFiniteMeasure ν]
    (α : ℝ) (hα : 0 < α) : ν.real {0} ≤ resolventMass ν α := by
  have hm : MeasurableSet ({0} : Set ℝ≥0) := measurableSet_singleton 0
  have hi := integral_mono ((integrable_const (1 : ℝ)).indicator hm)
    (resolventMassKernel_integrable ν α hα) (fun x => show
      ({0} : Set ℝ≥0).indicator (fun _ => (1 : ℝ)) x ≤ resolventMassKernel α x from by
      by_cases hx : x = 0
      · subst x
        simp [resolventMassKernel, ne_of_gt hα]
      · rw [Set.indicator_of_notMem (by simpa using hx)]
        exact (resolventMassKernel_nonneg_le_one α hα x).1)
  rw [integral_indicator_const 1 hm] at hi
  simpa only [resolventMass, smul_eq_mul, mul_one] using hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb4267aa789c6816f773b35545f73c2f4b681f25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
