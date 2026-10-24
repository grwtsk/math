# div_mem_nhds_one_of_haar_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f04e528d-5d8c-5b8c-30fc-862b7b56f784",
  "kind": "theorem",
  "lexical_name": "div_mem_nhds_one_of_haar_pos",
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
  "slug": "div-mem-nhds-one-of-haar-pos--086ad93ed040ee303ac31fe2",
  "source": {
    "blob": "dd891980ce77e38bac81917cee7cb19bd0750433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 669,
    "line": 640,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant3942d90f7c1fe09166cc5c76c931126763b765a03d795b9c495e5611e41a351f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:086ad93ed040ee303ac31fe20e7b6a1898096737e7f4544cb2533fa15ef4d8bd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant3942d90f7c1fe09166cc5c76c931126763b765a03d795b9c495e5611e41a351f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f04e528d-5d8c-5b8c-30fc-862b7b56f784`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 640–669.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_mem_nhds_one_of_haar_pos (μ : Measure G) [IsHaarMeasure μ] [LocallyCompactSpace G]
    [InnerRegular μ] (E : Set G) (hE : MeasurableSet E) (hEpos : 0 < μ E) :
    E / E ∈ 𝓝 (1 : G) := steinhaus_mul_aux μ E hE <| hE.exists_lt_isCompact hEpos

section SecondCountable_SigmaFinite
/-! In this section, we investigate uniqueness of left-invariant measures without assuming that
the measure is finite on compact sets, but assuming σ-finiteness instead. We also rely on
second-countability, to ensure that the group operations are measurable: in this case, one can
bypass all topological arguments, and conclude using uniqueness of σ-finite left-invariant measures
in measurable groups.

For more general uniqueness statements without second-countability assumptions,
see the file `Mathlib/MeasureTheory/Measure/Haar/Unique.lean`.
-/

variable [SecondCountableTopology G]

/-- **Uniqueness of left-invariant measures**: In a second-countable locally compact group, any
  σ-finite left-invariant measure is a scalar multiple of the Haar measure.
  This is slightly weaker than assuming that `μ` is a Haar measure (in particular we don't require
  `μ ≠ 0`).
  See also `isMulLeftInvariant_eq_smul_of_regular`
  for a statement not assuming second-countability. -/
@[to_additive
"**Uniqueness of left-invariant measures**: In a second-countable locally compact additive group,
  any σ-finite left-invariant measure is a scalar multiple of the additive Haar measure.
  This is slightly weaker than assuming that `μ` is a additive Haar measure (in particular we don't
  require `μ ≠ 0`).
  See also `isAddLeftInvariant_eq_smul_of_regular`
  for a statement not assuming second-countability."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant3942d90f7c1fe09166cc5c76c931126763b765a03d795b9c495e5611e41a351f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant3942d90f7c1fe09166cc5c76c931126763b765a03d795b9c495e5611e41a351f.lean#L640).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd891980ce77e38bac81917cee7cb19bd0750433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
