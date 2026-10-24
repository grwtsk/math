# tendsto_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d7837f3-5579-04cc-6f28-57d136210596",
  "kind": "theorem",
  "lexical_name": "tendsto_prod",
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
  "slug": "tendsto-prod--81a7afd72783771f85f3ff57",
  "source": {
    "blob": "82b124917ec325df281973b6becb37a035cd47ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 161,
    "path": "GRWTSK/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81a7afd72783771f85f3ff577028240ef255f9b15071b521bf84507a5d1511a4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d7837f3-5579-04cc-6f28-57d136210596`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_prod [MulOneClass α] [ContinuousMul α] {l : List α} :
    Tendsto List.prod (𝓝 l) (𝓝 l.prod) := by
  induction l with
  | nil => simp +contextual [nhds_nil, mem_of_mem_nhds, tendsto_pure_left]
  | cons x l ih =>
    simp_rw [tendsto_cons_iff, prod_cons]
    have := continuous_iff_continuousAt.mp continuous_mul (x, l.prod)
    rw [ContinuousAt, nhds_prod_eq] at this
    exact this.comp (tendsto_id.prodMap ih)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82b124917ec325df281973b6becb37a035cd47ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
