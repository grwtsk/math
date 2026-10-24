# MulAut

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88bee465d70537e14ff2d0c41d036cedb2d756dc73621d75139809fec4cdcaa4",
  "kind": "abbrev",
  "lexical_name": "MulAut",
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
  "slug": "mulaut--ed00a023ba4b57e408fd2d43",
  "source": {
    "blob": "f3d1b12fa35712ad7dd91cc1b167096e985e60da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 648,
    "line": 632,
    "path": "GRWTSK/Algebra/End/Variant4540822a4384157e931d0bba440c4323dff66d55131bea1f2a9f3d160dadb28b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed00a023ba4b57e408fd2d43d0b90cb1ca489d31c5aeab92e3e1c08f49bb9984",
  "verification": {
    "reference": "docs/verification/Algebra/End/Variant4540822a4384157e931d0bba440c4323dff66d55131bea1f2a9f3d160dadb28b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88bee465d70537e14ff2d0c41d036cedb2d756dc73621d75139809fec4cdcaa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 632–648.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev MulAut (M : Type*) [Mul M] :=
  M ≃* M

namespace MulAut

variable (M) [Mul M]

/-- If `M` is a type with multiplicative, then multiplicative automorphisms of `M` have the
structure of a group. -/
@[to_additive /-- If `M` is a type with addition, then additive automorphisms of `M` have the
structure of a group.

We give `AddAut M` the structure of an additive group rather than a multiplicative group to help
with `to_additive` translation. Without this, any proof in group theory making use of the
conjugation action `G →* MulAut G` would be impossible to `to_additive`-ize because a correct
additivization would require inserting `Additive` around `AddAut G` and dealing with these extra
`Additive`s in the proof, but `to_additive` is unable to do this automatically. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/End/Variant4540822a4384157e931d0bba440c4323dff66d55131bea1f2a9f3d160dadb28b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/End/Variant4540822a4384157e931d0bba440c4323dff66d55131bea1f2a9f3d160dadb28b.lean#L632).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3d1b12fa35712ad7dd91cc1b167096e985e60da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
