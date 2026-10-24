# le_nhds_iff_forall_inner_apply_le_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d38b8ad-e61b-8d86-c57b-c7b272c89f6e",
  "kind": "lemma",
  "lexical_name": "le_nhds_iff_forall_inner_apply_le_nhds",
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
  "slug": "le-nhds-iff-forall-inner-apply-le-nhds--6473142a2928a6e5bcdfc50e",
  "source": {
    "blob": "34695fbf0bca18f93c2dfa11669fa2cae7950eea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 48,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant0fddb0baca6bf62125fcbbf904f370e5605b6d46dfb47bbf596c0b68730c999b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6473142a2928a6e5bcdfc50e7cd9311bf9cb81318f221ce6d95da419e4d3de86",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant0fddb0baca6bf62125fcbbf904f370e5605b6d46dfb47bbf596c0b68730c999b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d38b8ad-e61b-8d86-c57b-c7b272c89f6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_nhds_iff_forall_inner_apply_le_nhds [CompleteSpace F] {l : Filter (E →WOT[𝕜] F)}
    {A : E →WOT[𝕜] F} : l ≤ 𝓝 A ↔ ∀ x y, l.map (fun T => ⟪y, T x⟫_𝕜) ≤ 𝓝 (⟪y, A x⟫_𝕜) :=
  tendsto_iff_forall_inner_apply_tendsto (f := id)

end ContinuousLinearMapWOT
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant0fddb0baca6bf62125fcbbf904f370e5605b6d46dfb47bbf596c0b68730c999b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant0fddb0baca6bf62125fcbbf904f370e5605b6d46dfb47bbf596c0b68730c999b.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34695fbf0bca18f93c2dfa11669fa2cae7950eea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
