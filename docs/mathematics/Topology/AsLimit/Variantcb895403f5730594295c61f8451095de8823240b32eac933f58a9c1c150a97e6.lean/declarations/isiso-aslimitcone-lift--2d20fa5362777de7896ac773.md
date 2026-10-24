# isIso_asLimitCone_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:207e2ad7a06ebcb06015975a884b2a5462c2b4ee0ab51f246a5c00fe50481dde",
  "kind": "instance",
  "lexical_name": "isIso_asLimitCone_lift",
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
  "slug": "isiso-aslimitcone-lift--2d20fa5362777de7896ac773",
  "source": {
    "blob": "af886bac0d4b1ea6ebe18d21c395c0f00c339023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 68,
    "path": "GRWTSK/Topology/AsLimit/Variantcb895403f5730594295c61f8451095de8823240b32eac933f58a9c1c150a97e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d20fa5362777de7896ac773a55e056da3a8a28a4d83f649c9522433d2d15004",
  "verification": {
    "reference": "docs/verification/Topology/AsLimit/Variantcb895403f5730594295c61f8451095de8823240b32eac933f58a9c1c150a97e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:207e2ad7a06ebcb06015975a884b2a5462c2b4ee0ab51f246a5c00fe50481dde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isIso_asLimitCone_lift : IsIso ((limitConeIsLimit.{u, u} X.diagram).lift X.asLimitCone) :=
  CompHausLike.isIso_of_bijective _
    (by
      refine ⟨fun a b h => ?_, fun a => ?_⟩
      · refine DiscreteQuotient.eq_of_forall_proj_eq fun S => ?_
        apply_fun fun f : (limitCone.{u, u} X.diagram).pt => f.val S at h
        exact h
      · obtain ⟨b, hb⟩ :=
          DiscreteQuotient.exists_of_compat (fun S => a.val S) fun _ _ h => a.prop (homOfLE h)
        use b
        -- ext S : 3 -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11041): `ext` does not work, replaced with following
        -- three lines.
        apply Subtype.ext
        apply funext
        rintro S
        -- Porting note: end replacement block
        apply hb
    )

/-- The isomorphism between `X` and the explicit limit of `X.diagram`,
induced by lifting `X.asLimitCone`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AsLimit/Variantcb895403f5730594295c61f8451095de8823240b32eac933f58a9c1c150a97e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AsLimit/Variantcb895403f5730594295c61f8451095de8823240b32eac933f58a9c1c150a97e6.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af886bac0d4b1ea6ebe18d21c395c0f00c339023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
