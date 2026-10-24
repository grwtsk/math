# integrableOn_singleton_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d414d268-376c-ad9e-eb0e-49c6bd474868",
  "kind": "theorem",
  "lexical_name": "integrableOn_singleton_iff",
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
  "slug": "integrableon-singleton-iff--02147a6e7173909fd61a447a",
  "source": {
    "blob": "f4824e02e4ab3d23958e8039e111228b669f0ed3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 189,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant7692586674fd7bb7231a8e9758cb6be4f5ea519ba5a7209ca9f6583d6de5a1c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02147a6e7173909fd61a447a3b21c88eb8de0845e0b62149192424e9af3e49b4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegrableOn/Variant7692586674fd7bb7231a8e9758cb6be4f5ea519ba5a7209ca9f6583d6de5a1c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d414d268-376c-ad9e-eb0e-49c6bd474868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_singleton_iff {f : α → ε'} {x : α}
    [MeasurableSingletonClass α] (hfx : ‖f x‖ₑ ≠ ⊤ := by finiteness) :
    IntegrableOn f {x} μ ↔ f x = 0 ∨ μ {x} < ∞ := by
  have : f =ᵐ[μ.restrict {x}] fun _ => f x := by
    filter_upwards [ae_restrict_mem (measurableSet_singleton x)] with _ ha
    simp only [mem_singleton_iff.1 ha]
  rw [IntegrableOn, integrable_congr this, integrable_const_iff_enorm, isFiniteMeasure_restrict,
    lt_top_iff_ne_top, enorm_eq_zero]
  exact hfx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegrableOn/Variant7692586674fd7bb7231a8e9758cb6be4f5ea519ba5a7209ca9f6583d6de5a1c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant7692586674fd7bb7231a8e9758cb6be4f5ea519ba5a7209ca9f6583d6de5a1c9.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4824e02e4ab3d23958e8039e111228b669f0ed3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
