# measureReal_inter_add_diff₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b113c39-4519-ffc4-97d8-2697fa9993e8",
  "kind": "theorem",
  "lexical_name": "measureReal_inter_add_diff₀",
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
  "slug": "measurereal-inter-add-diff--07c13a43fe20e5e97be291b4",
  "source": {
    "blob": "5c42626b68c7cbe07432643f4bacf415f6fa2c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 187,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Real/Variant8c3731aae24cae8eaa98a50b44cc2dc60d9c9e5db2acadbb83fed4a8cefebbd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07c13a43fe20e5e97be291b470f16a75f34bd2b1f0e10c15323817072625e85f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Real/Variant8c3731aae24cae8eaa98a50b44cc2dc60d9c9e5db2acadbb83fed4a8cefebbd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b113c39-4519-ffc4-97d8-2697fa9993e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measureReal_inter_add_diff₀ (ht : NullMeasurableSet t μ)
    (h : μ s ≠ ∞ := by finiteness) :
    μ.real (s ∩ t) + μ.real (s \ t) = μ.real s := by
  simp only [measureReal_def]
  rw [← ENNReal.toReal_add, measure_inter_add_diff₀ s ht]
  · exact measure_ne_top_of_subset inter_subset_left h
  · exact measure_ne_top_of_subset diff_subset h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Real/Variant8c3731aae24cae8eaa98a50b44cc2dc60d9c9e5db2acadbb83fed4a8cefebbd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Real/Variant8c3731aae24cae8eaa98a50b44cc2dc60d9c9e5db2acadbb83fed4a8cefebbd1.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c42626b68c7cbe07432643f4bacf415f6fa2c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
