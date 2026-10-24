# disjUnion_filter_pairs_eq_pairs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21364a9a-85d7-9242-6862-d5496f34b60d",
  "kind": "theorem",
  "lexical_name": "disjUnion_filter_pairs_eq_pairs",
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
  "slug": "disjunion-filter-pairs-eq-pairs--a3202b2b973e9453edb18538",
  "source": {
    "blob": "773db926f49a78b4497fa25e32e884194465082d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 205,
    "path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3202b2b973e9453edb185384492666c63ac0ca20e1fa88607cf292c2e736f07",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21364a9a-85d7-9242-6862-d5496f34b60d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem disjUnion_filter_pairs_eq_pairs (k : ℕ) :
    disjUnion (filter (fun t ↦ card t.fst < k) (pairs σ k))
    (filter (fun t ↦ card t.fst = k) (pairs σ k)) (disjoint_filter_pairs_lt_filter_pairs_eq σ k) =
    pairs σ k := by
  simp only [disjUnion_eq_union, Finset.ext_iff, pairs, filter_filter, mem_filter]
  intro a
  rw [← filter_or, mem_filter]
  refine' ⟨fun ha ↦ by tauto, fun ha ↦ _⟩
  have hacard := le_iff_lt_or_eq.mp ha.2.1
  tauto

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variantb2596487bdaa90f4c385c55a9233af798db26e02a8f90667b834c7c241c64f46.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `773db926f49a78b4497fa25e32e884194465082d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
