# log_list_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62044224-dbb7-e611-d033-a0e23323956f",
  "kind": "lemma",
  "lexical_name": "log_list_prod",
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
  "slug": "log-list-prod--159f5bcaa6afb5b6c75e5e26",
  "source": {
    "blob": "213c1a0fd9c778d656fadcb61775e45d46549c1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 398,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant2ea681313f8b0983a16b04c11c96a354dde64f5deef39c2077fed77466386a6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:159f5bcaa6afb5b6c75e5e26270e0de5f03f00d36755c07eb8398d59a69a17da",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant2ea681313f8b0983a16b04c11c96a354dde64f5deef39c2077fed77466386a6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62044224-dbb7-e611-d033-a0e23323956f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma log_list_prod {l : List ℝ} (h : ∀ x ∈ l, x ≠ 0) :
    log l.prod = (l.map (fun x ↦ log x)).sum := by
  induction l with
  | nil => simp
  | cons a l ih =>
    simp_all only [ne_eq, mem_cons, or_true, not_false_eq_true, forall_const, forall_eq_or_imp,
      prod_cons, map_cons, sum_cons]
    have : l.prod ≠ 0 := by grind [prod_ne_zero]
    rw [log_mul h.1 this, add_right_inj, ih]

open Multiset in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant2ea681313f8b0983a16b04c11c96a354dde64f5deef39c2077fed77466386a6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant2ea681313f8b0983a16b04c11c96a354dde64f5deef39c2077fed77466386a6d.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `213c1a0fd9c778d656fadcb61775e45d46549c1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
