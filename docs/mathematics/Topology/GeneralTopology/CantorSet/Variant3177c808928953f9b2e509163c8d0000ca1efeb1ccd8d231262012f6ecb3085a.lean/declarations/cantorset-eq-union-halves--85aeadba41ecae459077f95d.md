# cantorSet_eq_union_halves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a1ca84f-5faf-3e95-5b1d-79ae4d33a32f",
  "kind": "theorem",
  "lexical_name": "cantorSet_eq_union_halves",
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
  "slug": "cantorset-eq-union-halves--85aeadba41ecae459077f95d",
  "source": {
    "blob": "79fd5f67185e532e62fc157dbb2ade711ec62428",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 116,
    "path": "GRWTSK/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85aeadba41ecae459077f95d6cfe306f065f7eb1a86625160a47fa906c1712c3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a1ca84f-5faf-3e95-5b1d-79ae4d33a32f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cantorSet_eq_union_halves :
    cantorSet = (· / 3) '' cantorSet ∪ (fun x ↦ (2 + x) / 3) '' cantorSet := by
  simp only [cantorSet]
  rw [Set.image_iInter, Set.image_iInter]
  rotate_left
  · exact (mulRight_bijective₀ 3⁻¹ (by simp)).comp (AddGroup.addLeft_bijective 2)
  · exact mulRight_bijective₀ 3⁻¹ (by simp)
  simp_rw [← Function.comp_def,
    ← Set.iInter_union_of_antitone
      (Set.monotone_image.comp_antitone preCantorSet_antitone)
      (Set.monotone_image.comp_antitone preCantorSet_antitone),
    Function.comp_def, ← preCantorSet_succ]
  exact (preCantorSet_antitone.iInter_nat_add _).symm

set_option backward.isDefEq.respectTransparency false in
/-- The preCantor sets are closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79fd5f67185e532e62fc157dbb2ade711ec62428` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
