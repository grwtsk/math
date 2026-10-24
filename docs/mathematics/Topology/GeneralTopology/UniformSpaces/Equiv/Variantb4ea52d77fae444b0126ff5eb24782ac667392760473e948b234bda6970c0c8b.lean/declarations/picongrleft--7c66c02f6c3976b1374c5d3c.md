# piCongrLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47751405bd3190c006fa4ad5c1d1644166cc7ba98587b9a3e3d00520269302b5",
  "kind": "def",
  "lexical_name": "piCongrLeft",
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
  "slug": "picongrleft--7c66c02f6c3976b1374c5d3c",
  "source": {
    "blob": "dd6ae3f4c0392ae2c8cdbd5b3ed9f804c20a56ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 293,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variantb4ea52d77fae444b0126ff5eb24782ac667392760473e948b234bda6970c0c8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c66c02f6c3976b1374c5d3cd73100f22bbfdb90f7a0beba9e042e7c5b5a14a1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equiv/Variantb4ea52d77fae444b0126ff5eb24782ac667392760473e948b234bda6970c0c8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47751405bd3190c006fa4ad5c1d1644166cc7ba98587b9a3e3d00520269302b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def piCongrLeft {ι ι' : Type*} {β : ι' → Type*} [∀ j, UniformSpace (β j)]
    (e : ι ≃ ι') : (∀ i, β (e i)) ≃ᵤ ∀ j, β j where
  uniformContinuous_toFun := uniformContinuous_pi.mpr <| e.forall_congr_right.mp fun i ↦ by
    simpa only [Equiv.toFun_as_coe, Equiv.piCongrLeft_apply_apply] using
      Pi.uniformContinuous_proj _ i
  uniformContinuous_invFun := Pi.uniformContinuous_precomp' _ e
  toEquiv := Equiv.piCongrLeft _ e

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equiv/Variantb4ea52d77fae444b0126ff5eb24782ac667392760473e948b234bda6970c0c8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variantb4ea52d77fae444b0126ff5eb24782ac667392760473e948b234bda6970c0c8b.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd6ae3f4c0392ae2c8cdbd5b3ed9f804c20a56ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
