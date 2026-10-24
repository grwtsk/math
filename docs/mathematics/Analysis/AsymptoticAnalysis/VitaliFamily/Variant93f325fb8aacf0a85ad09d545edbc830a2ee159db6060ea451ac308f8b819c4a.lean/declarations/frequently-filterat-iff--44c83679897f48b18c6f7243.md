# frequently_filterAt_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcae6a32-61e3-c0e8-10f4-14d90f79a3fd",
  "kind": "theorem",
  "lexical_name": "frequently_filterAt_iff",
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
  "slug": "frequently-filterat-iff--44c83679897f48b18c6f7243",
  "source": {
    "blob": "ca83846355bb18f6af94af916fdb3fd812a15601",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 283,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/VitaliFamily/Variant93f325fb8aacf0a85ad09d545edbc830a2ee159db6060ea451ac308f8b819c4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44c83679897f48b18c6f724362ee208a48c62c6115c326dbf51ff47d2df16c91",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/VitaliFamily/Variant93f325fb8aacf0a85ad09d545edbc830a2ee159db6060ea451ac308f8b819c4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcae6a32-61e3-c0e8-10f4-14d90f79a3fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frequently_filterAt_iff {x : α} {P : Set α → Prop} :
    (∃ᶠ a in v.filterAt x, P a) ↔ ∀ ε > (0 : ℝ), ∃ a ∈ v.setsAt x, a ⊆ closedBall x ε ∧ P a := by
  simp only [Filter.Frequently, eventually_filterAt_iff, not_exists, exists_prop, not_and,
    Classical.not_not, not_forall]
#align vitali_family.frequently_filter_at_iff VitaliFamily.frequently_filterAt_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/VitaliFamily/Variant93f325fb8aacf0a85ad09d545edbc830a2ee159db6060ea451ac308f8b819c4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/VitaliFamily/Variant93f325fb8aacf0a85ad09d545edbc830a2ee159db6060ea451ac308f8b819c4a.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca83846355bb18f6af94af916fdb3fd812a15601` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
