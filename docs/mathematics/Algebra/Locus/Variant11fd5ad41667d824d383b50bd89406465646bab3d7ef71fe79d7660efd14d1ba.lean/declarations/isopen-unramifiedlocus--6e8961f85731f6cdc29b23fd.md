# isOpen_unramifiedLocus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "214e1a6125d787cfd80ec828130db0c1b6ff6d44",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/11fd5ad41667d824d383b50bd89406465646bab3d7ef71fe79d7660efd14d1ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13a0d2c5-29c2-fe3d-53b1-567067bd8c93",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39984f4f-9d39-6b3e-054b-a46630b01ce8",
  "kind": "lemma",
  "lexical_name": "isOpen_unramifiedLocus",
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
  "slug": "isopen-unramifiedlocus--6e8961f85731f6cdc29b23fd",
  "source": {
    "blob": "214e1a6125d787cfd80ec828130db0c1b6ff6d44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 68,
    "path": "GRWTSK/Algebra/Locus/Variant11fd5ad41667d824d383b50bd89406465646bab3d7ef71fe79d7660efd14d1ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e8961f85731f6cdc29b23fd8fbb23231da8fab1dd763d181a703fa2fa7f407a",
  "verification": {
    "reference": "docs/verification/Algebra/Locus/Variant11fd5ad41667d824d383b50bd89406465646bab3d7ef71fe79d7660efd14d1ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39984f4f-9d39-6b3e-054b-a46630b01ce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpen_unramifiedLocus [EssFiniteType R A] : IsOpen (unramifiedLocus R A) := by
  rw [unramifiedLocus_eq_compl_support, Module.support_eq_zeroLocus]
  exact (PrimeSpectrum.isClosed_zeroLocus _).isOpen_compl

end Algebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Locus/Variant11fd5ad41667d824d383b50bd89406465646bab3d7ef71fe79d7660efd14d1ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Locus/Variant11fd5ad41667d824d383b50bd89406465646bab3d7ef71fe79d7660efd14d1ba.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `214e1a6125d787cfd80ec828130db0c1b6ff6d44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
