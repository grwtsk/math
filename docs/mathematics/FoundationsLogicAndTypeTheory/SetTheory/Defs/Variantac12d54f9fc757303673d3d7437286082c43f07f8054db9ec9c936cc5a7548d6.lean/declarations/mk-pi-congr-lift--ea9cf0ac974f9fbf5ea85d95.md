# mk_pi_congr_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fb8e927-804d-4b0f-e4dc-c5e6c56cfff0",
  "kind": "theorem",
  "lexical_name": "mk_pi_congr_lift",
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
  "slug": "mk-pi-congr-lift--ea9cf0ac974f9fbf5ea85d95",
  "source": {
    "blob": "d8c71d66dc3c1e60f4afed339f579a27cff5f0de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 416,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Defs/Variantac12d54f9fc757303673d3d7437286082c43f07f8054db9ec9c936cc5a7548d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea9cf0ac974f9fbf5ea85d95c11959bb85cfd90a6b2d723dad662917bd7f3904",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Defs/Variantac12d54f9fc757303673d3d7437286082c43f07f8054db9ec9c936cc5a7548d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fb8e927-804d-4b0f-e4dc-c5e6c56cfff0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_pi_congr_lift {ι : Type v} {ι' : Type v'} {f : ι → Type w} {g : ι' → Type w'}
    (e : ι ≃ ι') (h : ∀ i, lift.{w'} #(f i) = lift.{w} #(g (e i))) :
    lift.{max v' w'} #(Π i, f i) = lift.{max v w} #(Π i, g i) :=
  Cardinal.lift_mk_eq'.2 ⟨.piCongr e fun i ↦ Classical.choice <| Cardinal.lift_mk_eq'.1 (h i)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Defs/Variantac12d54f9fc757303673d3d7437286082c43f07f8054db9ec9c936cc5a7548d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Defs/Variantac12d54f9fc757303673d3d7437286082c43f07f8054db9ec9c936cc5a7548d6.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8c71d66dc3c1e60f4afed339f579a27cff5f0de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
