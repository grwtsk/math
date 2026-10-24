# pointwise_central_scalar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1734e076d4caeb6a47ea3d7076ac1c05f4cb7e2db17fd0b4245f7e1a40c397a6",
  "kind": "instance",
  "lexical_name": "pointwise_central_scalar",
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
  "slug": "pointwise-central-scalar--c1eb99b2bd9986f59f6fddc0",
  "source": {
    "blob": "2f47c086a4086227577b30d515e0aeb0be63f75d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 86,
    "path": "GRWTSK/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1eb99b2bd9986f59f6fddc06d3ba266d14f58aa979820a6166c62267762e474",
  "verification": {
    "reference": "docs/verification/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1734e076d4caeb6a47ea3d7076ac1c05f4cb7e2db17fd0b4245f7e1a40c397a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance pointwise_central_scalar [MulSemiringAction Mᵐᵒᵖ R] [IsCentralScalar M R] :
    IsCentralScalar M (Subring R) :=
  ⟨fun _ S => (congr_arg fun f => S.map f) <| RingHom.ext <| op_smul_eq_smul _⟩

end Monoid

section Group

variable [Group M] [Ring R] [MulSemiringAction M R]

open Pointwise

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f47c086a4086227577b30d515e0aeb0be63f75d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
