# continuousOn_herglotzRieszKernel_sphere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6361b8f-1cc6-e9e9-66e3-42f394418964",
  "kind": "lemma",
  "lexical_name": "continuousOn_herglotzRieszKernel_sphere",
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
  "slug": "continuouson-herglotzrieszkernel-sphere--aff553d2485c1d03f606a41a",
  "source": {
    "blob": "36154ed1f354b980c4c603074a9b88d5a3c57e0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 148,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aff553d2485c1d03f606a41ac67685467a7781f80d832a9822fc799310767a28",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6361b8f-1cc6-e9e9-66e3-42f394418964`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[fun_prop] lemma continuousOn_herglotzRieszKernel_sphere (hw : w ∉ sphere c |R|) :
    ContinuousOn (herglotzRieszKernel c w) (sphere c |R|) := by
  apply ContinuousOn.div (by fun_prop) (by fun_prop)
  intro z hz
  rw [sub_sub_sub_cancel_right, sub_ne_zero]
  rintro rfl
  exact hw hz

/--
Taking real parts commutes with the Herglotz–Riesz kernel integral of a real-valued
circle-integrable function.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36154ed1f354b980c4c603074a9b88d5a3c57e0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
