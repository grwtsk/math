# fromUnitLift_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66908a3c-b3e6-6358-e1de-e58447c8586b",
  "kind": "theorem",
  "lexical_name": "fromUnitLift_injective",
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
  "slug": "fromunitlift-injective--f238741ed93d37b20a7e588c",
  "source": {
    "blob": "cf6c150afd495c55d6f9c9811db93270a2d07dda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 250,
    "path": "GRWTSK/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f238741ed93d37b20a7e588ca5eee154d7d63ec6f5f1ed508a92099df261c0f9",
  "verification": {
    "reference": "docs/verification/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66908a3c-b3e6-6358-e1de-e58447c8586b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fromUnitLift_injective [Fact <| 0 < n] :
    Function.Injective <| @fromUnitLift R _ _ _ K _ _ _ n _ := by
  dsimp only [fromUnitLift, MonoidHom.coe_comp, MulEquiv.coe_toMonoidHom]
  exact Function.Injective.comp (QuotientGroup.kerLift_injective _) (MulEquiv.injective _)
#align is_dedekind_domain.selmer_group.from_unit_lift_injective IsDedekindDomain.selmerGroup.fromUnitLift_injective

end selmerGroup

end

end IsDedekindDomain
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf6c150afd495c55d6f9c9811db93270a2d07dda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
