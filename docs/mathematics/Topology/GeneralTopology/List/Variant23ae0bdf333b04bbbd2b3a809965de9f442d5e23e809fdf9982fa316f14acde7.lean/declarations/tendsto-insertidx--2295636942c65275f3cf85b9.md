# tendsto_insertIdx'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5cdf2650c9105a6a4dc607b2e612cb802fd8f273",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3314d25-2bd5-8661-50ff-ffe9c946db6d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1093ee41-518e-7560-6a52-77a4d893cc35",
  "kind": "theorem",
  "lexical_name": "tendsto_insertIdx'",
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
  "slug": "tendsto-insertidx--2295636942c65275f3cf85b9",
  "source": {
    "blob": "5cdf2650c9105a6a4dc607b2e612cb802fd8f273",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 116,
    "path": "GRWTSK/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2295636942c65275f3cf85b92d675fd51bcf1a8e66e64fa943f8d8b8d2c5b361",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1093ee41-518e-7560-6a52-77a4d893cc35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_insertIdx' {a : α} :
    ∀ {n : ℕ} {l : List α},
      Tendsto (fun p : α × List α => p.2.insertIdx n p.1) (𝓝 a ×ˢ 𝓝 l) (𝓝 (l.insertIdx n a))
  | 0, _ => tendsto_cons
  | n + 1, [] => by simp
  | n + 1, a'::l => by
    have : 𝓝 a ×ˢ 𝓝 (a'::l) =
        (𝓝 a ×ˢ (𝓝 a' ×ˢ 𝓝 l)).map fun p : α × α × List α => (p.1, p.2.1::p.2.2) := by
      simp only [nhds_cons, Filter.prod_eq, ← Filter.map_def, ← Filter.seq_eq_filter_seq]
      simp [-Filter.map_def, Function.comp_def, functor_norm]
    rw [this, tendsto_map'_iff]
    exact
      (tendsto_fst.comp tendsto_snd).cons
        ((@tendsto_insertIdx' _ n l).comp <| tendsto_fst.prodMk <| tendsto_snd.comp tendsto_snd)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cdf2650c9105a6a4dc607b2e612cb802fd8f273` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
