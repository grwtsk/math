# Finset.instMeasurableSingletonClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8ee0264b588c80f79c75f2fa3702cb17e98343f145041edc16892e34351900a",
  "kind": "instance",
  "lexical_name": "Finset.instMeasurableSingletonClass",
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
  "slug": "finset-instmeasurablesingletonclass--67b1a04d358633de540439c8",
  "source": {
    "blob": "b66e9602adfff1ac1f45d9adf1ce804335ebc8f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1043,
    "line": 1030,
    "path": "GRWTSK/Analysis/MeasureTheory/Constructions/Variant29218ab53544ed4031079acfe91ce4880ccbc0b705fe6b1c0168be4c4c8ca416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67b1a04d358633de540439c895a543ac9609836e56275198803b2f5104b2b8fe",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Constructions/Variant29218ab53544ed4031079acfe91ce4880ccbc0b705fe6b1c0168be4c4c8ca416.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8ee0264b588c80f79c75f2fa3702cb17e98343f145041edc16892e34351900a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1030–1043.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Finset.instMeasurableSingletonClass : MeasurableSingletonClass (Finset α) :=
  .mk fun S ↦ (measurableSet_finset_iff _).mpr ⟨{↑S}, by simp, by ext; simp⟩

end Finset

section curry

variable {ι : Type*}

section Function

variable {κ X : Type*} [MeasurableSpace X]

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Constructions/Variant29218ab53544ed4031079acfe91ce4880ccbc0b705fe6b1c0168be4c4c8ca416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Constructions/Variant29218ab53544ed4031079acfe91ce4880ccbc0b705fe6b1c0168be4c4c8ca416.lean#L1030).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b66e9602adfff1ac1f45d9adf1ce804335ebc8f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
