# aemeasurable_pi_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:289348db-621e-ab55-c7c6-d7e01137e7c6",
  "kind": "theorem",
  "lexical_name": "aemeasurable_pi_iff",
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
  "slug": "aemeasurable-pi-iff--9339be19ae061d0e263ec7a1",
  "source": {
    "blob": "8a4607dc15e429f7164e9a82008c2baf375c582e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 449,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Variantcc68c05f586037f6e4d614358d1487bbc63f3dfa6077377f538547f18423facf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9339be19ae061d0e263ec7a1277a062f552c8bbd6d98a62bdbc118e9170f1961",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasureSpaceDef/Variantcc68c05f586037f6e4d614358d1487bbc63f3dfa6077377f538547f18423facf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:289348db-621e-ab55-c7c6-d7e01137e7c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aemeasurable_pi_iff {g : α → Π a, X a} :
    AEMeasurable g μ ↔ ∀ a, AEMeasurable (fun x ↦ g x a) μ := by
  constructor
  · intro hg a
    use fun x ↦ hg.mk g x a, hg.measurable_mk.eval
    exact hg.ae_eq_mk.mono fun _ h ↦ congrFun h _
  · intro h
    use fun x a ↦ (h a).mk _ x, measurable_pi_lambda _ fun a ↦ (h a).measurable_mk
    exact (eventually_countable_forall.mpr fun a ↦ (h a).ae_eq_mk).mono fun _ h ↦ funext h

@[fun_prop, aesop safe 100 apply (rule_sets := [Measurable])]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasureSpaceDef/Variantcc68c05f586037f6e4d614358d1487bbc63f3dfa6077377f538547f18423facf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Variantcc68c05f586037f6e4d614358d1487bbc63f3dfa6077377f538547f18423facf.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a4607dc15e429f7164e9a82008c2baf375c582e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
