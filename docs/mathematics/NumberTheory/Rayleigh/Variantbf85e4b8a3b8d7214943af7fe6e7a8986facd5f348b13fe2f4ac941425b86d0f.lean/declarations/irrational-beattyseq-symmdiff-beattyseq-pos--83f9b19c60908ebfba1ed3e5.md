# Irrational.beattySeq_symmDiff_beattySeq_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64044295-5fe8-9a65-52c8-793c59f53b78",
  "kind": "theorem",
  "lexical_name": "Irrational.beattySeq_symmDiff_beattySeq_pos",
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
  "slug": "irrational-beattyseq-symmdiff-beattyseq-pos--83f9b19c60908ebfba1ed3e5",
  "source": {
    "blob": "97c43476159c0e34968b5b230f14da50f8a02608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 181,
    "path": "GRWTSK/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83f9b19c60908ebfba1ed3e584429e469c53b75153ac8ed34484ae26800154d4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64044295-5fe8-9a65-52c8-793c59f53b78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Irrational.beattySeq_symmDiff_beattySeq_pos {r s : ℝ}
    (hrs : r.HolderConjugate s) (hr : Irrational r) :
    {beattySeq r k | k > 0} ∆ {beattySeq s k | k > 0} = {n | 0 < n} := by
  rw [← hr.beattySeq'_pos_eq, beattySeq'_symmDiff_beattySeq_pos hrs]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97c43476159c0e34968b5b230f14da50f8a02608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
