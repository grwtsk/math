# Submodule.rank_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be686d7a739311091392ea7d3b164df50a53b1ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 408,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e52cf3c2-26cb-82b3-6771-fbadd45874f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e39c1be2-c988-17bb-182c-d3c251eb091d",
  "kind": "lemma",
  "lexical_name": "Submodule.rank_mono",
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
  "slug": "submodule-rank-mono--93b1d3d559148333a4393840",
  "source": {
    "blob": "be686d7a739311091392ea7d3b164df50a53b1ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 408,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93b1d3d559148333a43938409d3e6358f0e71c5bfaf15fa0cc9de4b3dee96824",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e39c1be2-c988-17bb-182c-d3c251eb091d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Submodule.rank_mono {s t : Submodule R M} (h : s ≤ t) : Module.rank R s ≤ Module.rank R t :=
  (Submodule.inclusion h).rank_le_of_injective fun ⟨x, _⟩ ⟨y, _⟩ eq =>
    Subtype.ext <| show x = y from Subtype.ext_iff.1 eq

/-- Two linearly equivalent vector spaces have the same dimension, a version with different
universes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be686d7a739311091392ea7d3b164df50a53b1ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
