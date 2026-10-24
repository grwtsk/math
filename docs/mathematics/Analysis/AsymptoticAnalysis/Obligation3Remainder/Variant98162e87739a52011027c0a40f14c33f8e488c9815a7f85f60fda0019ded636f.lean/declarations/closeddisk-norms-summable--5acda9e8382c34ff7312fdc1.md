# closedDisk_norms_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b8593d3-de55-12c1-205b-af3d03c72b7e",
  "kind": "lemma",
  "lexical_name": "closedDisk_norms_summable",
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
  "slug": "closeddisk-norms-summable--5acda9e8382c34ff7312fdc1",
  "source": {
    "blob": "87225e52ff21f3b53b565a33cf47ee5b04cf5387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 50,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5acda9e8382c34ff7312fdc15c5dc22b8aad3333c19aafbde6f681f1d1f88da4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b8593d3-de55-12c1-205b-af3d03c72b7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma closedDisk_norms_summable (p : ZeroPoint) (r : ℝ) (hr : 0 < r)
    (hD : sphere (2 * (p.val - 1 / 2)) r ⊆ convergenceDomain)
    (hhol : ∀ o : RemainingOccurrence p, AnalyticOnNhd ℂ (sourceKernel (shiftedValue o.val))
      (closedBall (2 * (p.val - 1 / 2)) r))
    (s : ℂ) (hs : s ∈ closedBall (2 * (p.val - 1 / 2)) r) :
    Summable (fun o : RemainingOccurrence p ↦ ‖sourceKernel (shiftedValue o.val) s‖) :=
  Summable.of_nonneg_of_le (fun _ ↦ norm_nonneg _)
    (fun o ↦ closedDisk_norm_le_boundary p r hr hD hhol o s hs)
    (boundary_norms_summable p r hD)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87225e52ff21f3b53b565a33cf47ee5b04cf5387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
