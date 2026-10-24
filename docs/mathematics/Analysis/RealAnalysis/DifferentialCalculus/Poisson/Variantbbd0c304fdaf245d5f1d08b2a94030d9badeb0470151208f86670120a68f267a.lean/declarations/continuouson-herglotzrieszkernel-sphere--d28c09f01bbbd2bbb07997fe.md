# continuousOn_herglotzRieszKernel_sphere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9dc6865-39c4-b9d8-0232-e0e90c2a8e41",
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
  "slug": "continuouson-herglotzrieszkernel-sphere--d28c09f01bbbd2bbb07997fe",
  "source": {
    "blob": "0eaa5bbe40b6c8e441c9e1fbeb2b0a49f835fba0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 156,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variantbbd0c304fdaf245d5f1d08b2a94030d9badeb0470151208f86670120a68f267a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d28c09f01bbbd2bbb07997fed4e54ffb382a51e72f9bd851c68231ebc3df94a2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variantbbd0c304fdaf245d5f1d08b2a94030d9badeb0470151208f86670120a68f267a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9dc6865-39c4-b9d8-0232-e0e90c2a8e41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–167.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variantbbd0c304fdaf245d5f1d08b2a94030d9badeb0470151208f86670120a68f267a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variantbbd0c304fdaf245d5f1d08b2a94030d9badeb0470151208f86670120a68f267a.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eaa5bbe40b6c8e441c9e1fbeb2b0a49f835fba0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
