# π_comp_ι_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62d323a2-d8e8-286b-34dc-c2526e5c2364",
  "kind": "lemma",
  "lexical_name": "π_comp_ι_inv",
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
  "slug": "comp-inv--e979a3e1df46901e5e02e7e2",
  "source": {
    "blob": "aca8cb692be544dbf607c65349f7f2a6453cfd88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 193,
    "path": "GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e979a3e1df46901e5e02e7e2b02942585c408474dcf47e27843d51d135137179",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62d323a2-d8e8-286b-34dc-c2526e5c2364`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma π_comp_ι_inv (a : α) : π a ≫ (ιIso π surj).inv = π' π surj a := by
  rw [Iso.comp_inv_eq]
  exact π'_comp_ι_hom _ surj _

/--
Implementation: The family `X` is an effective epi, provided that `π` are jointly surjective.
The theorem `Profinite.effectiveEpiFamily_tfae` should be used instead.
-/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aca8cb692be544dbf607c65349f7f2a6453cfd88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
