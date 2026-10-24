# tendsto_insertIdx'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16964468-4fe5-0e91-fe29-0ba00cbff224",
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
  "slug": "tendsto-insertidx--8343349ee807e11634732ee7",
  "source": {
    "blob": "7667789036d5e600ee2bb36ac0eb974b5f47c1b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 129,
    "path": "GRWTSK/Topology/GeneralTopology/List/Variantc5028b03d239f4c88f70242212f8f3b08b3f05a07aa8aa291c5dd463db295752.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8343349ee807e11634732ee7ccb07c8dce5a2faee473800b0dd8dfcaaf32912f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/List/Variantc5028b03d239f4c88f70242212f8f3b08b3f05a07aa8aa291c5dd463db295752.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16964468-4fe5-0e91-fe29-0ba00cbff224`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–143.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/List/Variantc5028b03d239f4c88f70242212f8f3b08b3f05a07aa8aa291c5dd463db295752.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/List/Variantc5028b03d239f4c88f70242212f8f3b08b3f05a07aa8aa291c5dd463db295752.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7667789036d5e600ee2bb36ac0eb974b5f47c1b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
