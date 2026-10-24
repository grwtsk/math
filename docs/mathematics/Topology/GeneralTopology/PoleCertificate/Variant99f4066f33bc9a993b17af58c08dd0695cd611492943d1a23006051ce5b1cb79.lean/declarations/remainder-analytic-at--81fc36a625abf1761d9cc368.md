# remainder_analytic_at

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bb2ea2f-1891-e472-efcf-49690dd12f38",
  "kind": "lemma",
  "lexical_name": "remainder_analytic_at",
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
  "slug": "remainder-analytic-at--81fc36a625abf1761d9cc368",
  "source": {
    "blob": "7ab27680bded49f54d9fba2b94939d442257a19e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 884,
    "line": 874,
    "path": "GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant99f4066f33bc9a993b17af58c08dd0695cd611492943d1a23006051ce5b1cb79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81fc36a625abf1761d9cc3687e9efc3db493edf12195950d49ae56d5ed6c25d0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PoleCertificate/Variant99f4066f33bc9a993b17af58c08dd0695cd611492943d1a23006051ce5b1cb79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bb2ea2f-1891-e472-efcf-49690dd12f38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 874–884.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma remainder_analytic_at
    (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    AnalyticAt ℂ (remainder p)
      (2 * (p.val - 1 / 2)) := by
  obtain ⟨r, hr, _, _, _, hhol⟩ :=
    exists_remainder_disk p hp
  exact hhol _ (mem_ball_self hr)

/-! ## Full continued sum and exact pole -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PoleCertificate/Variant99f4066f33bc9a993b17af58c08dd0695cd611492943d1a23006051ce5b1cb79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant99f4066f33bc9a993b17af58c08dd0695cd611492943d1a23006051ce5b1cb79.lean#L874).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ab27680bded49f54d9fba2b94939d442257a19e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
