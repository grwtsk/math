# comap_sectL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56ac74a8-3054-8308-645f-0500c892e13a",
  "kind": "lemma",
  "lexical_name": "comap_sectL",
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
  "slug": "comap-sectl--5da7bfa544760a89679ce17a",
  "source": {
    "blob": "d3045452134ddc322dc4172e827c6dc69f1b75f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 585,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MapComap/Variant0ab33b7f603881f79d90cf028798348637ad5c0f7a184eff323dcbc505ffb123.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5da7bfa544760a89679ce17a3b04fc05ce3627b6bc491b9e034972224347e859",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MapComap/Variant0ab33b7f603881f79d90cf028798348637ad5c0f7a184eff323dcbc505ffb123.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56ac74a8-3054-8308-645f-0500c892e13a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 585–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comap_sectL (κ : Kernel (α × β) γ) (b : β) {f : δ → α} (hf : Measurable f) :
    comap (sectL κ b) f hf = comap κ (fun d ↦ (f d, b)) (hf.prodMk measurable_const) := by
  ext d s
  rw [comap_apply, sectL_apply, comap_apply]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MapComap/Variant0ab33b7f603881f79d90cf028798348637ad5c0f7a184eff323dcbc505ffb123.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MapComap/Variant0ab33b7f603881f79d90cf028798348637ad5c0f7a184eff323dcbc505ffb123.lean#L585).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3045452134ddc322dc4172e827c6dc69f1b75f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
