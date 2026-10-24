# Pi.measurableMul₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5737bbddd6461422558930b30f14d06a9665f538c240e8c51afabfacd177fd04",
  "kind": "instance",
  "lexical_name": "Pi.measurableMul₂",
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
  "slug": "pi-measurablemul--63ce0fe8c6484a6b9cb9e36c",
  "source": {
    "blob": "cddcbe6455265d622ffddd416b8ae2d50a94a71a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 185,
    "path": "GRWTSK/Analysis/MeasureTheory/Arithmetic/Variantd1d57fb38678256a746bc03b3e168c611701abb1d27f227df764e4be8ae410ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63ce0fe8c6484a6b9cb9e36cc4c2c8e56e34a595f35a026d7e320a8131ab014e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Arithmetic/Variantd1d57fb38678256a746bc03b3e168c611701abb1d27f227df764e4be8ae410ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5737bbddd6461422558930b30f14d06a9665f538c240e8c51afabfacd177fd04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.measurableMul₂ {ι : Type*} {α : ι → Type*} [∀ i, Mul (α i)]
    [∀ i, MeasurableSpace (α i)] [∀ i, MeasurableMul₂ (α i)] : MeasurableMul₂ (∀ i, α i) :=
  ⟨measurable_pi_iff.mpr fun _ => measurable_fst.eval.mul measurable_snd.eval⟩
#align pi.has_measurable_mul₂ Pi.measurableMul₂
#align pi.has_measurable_add₂ Pi.measurableAdd₂

end Mul

/-- A version of `measurable_div_const` that assumes `MeasurableMul` instead of
  `MeasurableDiv`. This can be nice to avoid unnecessary type-class assumptions. -/
@[to_additive " A version of `measurable_sub_const` that assumes `MeasurableAdd` instead of
  `MeasurableSub`. This can be nice to avoid unnecessary type-class assumptions. "]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Arithmetic/Variantd1d57fb38678256a746bc03b3e168c611701abb1d27f227df764e4be8ae410ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Arithmetic/Variantd1d57fb38678256a746bc03b3e168c611701abb1d27f227df764e4be8ae410ea.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cddcbe6455265d622ffddd416b8ae2d50a94a71a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
