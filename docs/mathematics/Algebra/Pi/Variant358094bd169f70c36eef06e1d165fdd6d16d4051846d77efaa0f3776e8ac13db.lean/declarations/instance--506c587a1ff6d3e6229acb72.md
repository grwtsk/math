# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c8342e696efd692a825e8558aea9ca8d37e82df2878ce8febb6addea2a5102a8",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--506c587a1ff6d3e6229acb72",
  "source": {
    "blob": "0840cb51516782757b8b13a38293c46d2ff188f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 71,
    "path": "GRWTSK/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:506c587a1ff6d3e6229acb72b944b65f007bb0b683f7859b9eb88cae32b22a5d",
  "verification": {
    "reference": "docs/verification/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c8342e696efd692a825e8558aea9ca8d37e82df2878ce8febb6addea2a5102a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [∀ i, Algebra (S i) (A i)] : Algebra (Π i, S i) (Π i, A i) where
  algebraMap := Pi.ringHom fun _ ↦ (algebraMap _ _).comp (Pi.evalRingHom S _)
  commutes' _ _ := funext fun _ ↦ Algebra.commutes _ _
  smul_def' _ _ := funext fun _ ↦ Algebra.smul_def _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0840cb51516782757b8b13a38293c46d2ff188f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
