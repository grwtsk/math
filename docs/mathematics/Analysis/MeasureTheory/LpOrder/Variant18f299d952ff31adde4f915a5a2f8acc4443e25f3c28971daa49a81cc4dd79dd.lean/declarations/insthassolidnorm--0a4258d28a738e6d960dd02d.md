# instHasSolidNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b9ea5bf686143add15fa04a8b120103450e66dfbb3bf241d957977c0b4e1e8c",
  "kind": "instance",
  "lexical_name": "instHasSolidNorm",
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
  "slug": "insthassolidnorm--0a4258d28a738e6d960dd02d",
  "source": {
    "blob": "d868202b6c8c88ddacb18439f6f043f59b30bcc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 117,
    "path": "GRWTSK/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a4258d28a738e6d960dd02d809bcc874a9beeba95152d2bc40b3fc41a63c845",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b9ea5bf686143add15fa04a8b120103450e66dfbb3bf241d957977c0b4e1e8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instHasSolidNorm [Fact (1 ≤ p)] :
    HasSolidNorm (Lp E p μ) :=
  { solid := fun f g hfg => by
      rw [← coeFn_le] at hfg
      simp_rw [Lp.norm_def, ENNReal.toReal_le_toReal (Lp.eLpNorm_ne_top f) (Lp.eLpNorm_ne_top g)]
      refine eLpNorm_mono_ae (Lp.aestronglyMeasurable f) ?_
      filter_upwards [hfg, Lp.coeFn_abs f, Lp.coeFn_abs g] with x hx hxf hxg
      rw [hxf, hxg] at hx
      exact HasSolidNorm.solid hx }

end Lattice

end Order

end Lp

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d868202b6c8c88ddacb18439f6f043f59b30bcc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
