# Irrational.beattySeq_symmDiff_beattySeq_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3865189-ac6e-49c1-8363-dffba67569f3",
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
  "slug": "irrational-beattyseq-symmdiff-beattyseq-pos--f4c9d9ef127240156f35586a",
  "source": {
    "blob": "392883f9f031f74fead3857af0e8c9c219536ea9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 185,
    "path": "GRWTSK/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4c9d9ef127240156f35586a34bd345d2a1cf4f211adb29bac8e38f6d61f9663",
  "verification": {
    "reference": "docs/verification/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3865189-ac6e-49c1-8363-dffba67569f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Irrational.beattySeq_symmDiff_beattySeq_pos {r s : ℝ}
    (hrs : r.HolderConjugate s) (hr : Irrational r) :
    {beattySeq r k | k > 0} ∆ {beattySeq s k | k > 0} = {n | 0 < n} := by
  rw [← hr.beattySeq'_pos_eq, beattySeq'_symmDiff_beattySeq_pos hrs]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `392883f9f031f74fead3857af0e8c9c219536ea9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
