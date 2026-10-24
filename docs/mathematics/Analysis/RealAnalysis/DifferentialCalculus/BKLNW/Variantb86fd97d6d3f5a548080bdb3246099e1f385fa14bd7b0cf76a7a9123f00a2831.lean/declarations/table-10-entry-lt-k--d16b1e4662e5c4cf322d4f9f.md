# table_10_entry_lt_K

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7403c6c-c002-46c1-b470-8db7d1832a7c",
  "kind": "lemma",
  "lexical_name": "table_10_entry_lt_K",
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
  "slug": "table-10-entry-lt-k--d16b1e4662e5c4cf322d4f9f",
  "source": {
    "blob": "ffde19a257af38792c1e302adf6bb58acc6c98a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1396,
    "line": 1388,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d16b1e4662e5c4cf322d4f9fa23114d883f9808f86feb82b64ac985711e579ad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7403c6c-c002-46c1-b470-8db7d1832a7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1388–1396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma table_10_entry_lt_K (b : ℝ) (hb : b ∈ table_10_entries) : b < (K : ℝ) := by
  simp only [List.mem_toFinset, List.mem_map] at hb
  rcases hb with ⟨p, hp, rfl⟩
  simp only [BKLNW.table_10, List.mem_cons, List.not_mem_nil] at hp
  casesm* _ ∨ _
  <;> try (subst hp; norm_num)
  · linarith [LogTables.log_10_lt]
  · exact hp.elim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean#L1388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffde19a257af38792c1e302adf6bb58acc6c98a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
