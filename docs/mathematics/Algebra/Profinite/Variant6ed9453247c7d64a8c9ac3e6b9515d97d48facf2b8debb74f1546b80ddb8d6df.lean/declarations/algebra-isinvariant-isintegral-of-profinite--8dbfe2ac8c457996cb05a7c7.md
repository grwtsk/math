# Algebra.IsInvariant.isIntegral_of_profinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a16d714bbccb28eda032a355518d8853069d2f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a2797e1-64d1-2a5f-1121-43217fe11671",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aff5e834-4d10-321b-cc18-0f8d754a1500",
  "kind": "lemma",
  "lexical_name": "Algebra.IsInvariant.isIntegral_of_profinite",
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
  "slug": "algebra-isinvariant-isintegral-of-profinite--8dbfe2ac8c457996cb05a7c7",
  "source": {
    "blob": "2a16d714bbccb28eda032a355518d8853069d2f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 42,
    "path": "GRWTSK/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dbfe2ac8c457996cb05a7c74ae5d6b080474397229c275fedaa1fc26a4b7dbb",
  "verification": {
    "reference": "docs/verification/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aff5e834-4d10-321b-cc18-0f8d754a1500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.IsInvariant.isIntegral_of_profinite
    [Algebra.IsInvariant A B G] : Algebra.IsIntegral A B := by
  constructor
  intro x
  obtain ⟨N, hN⟩ := ProfiniteGrp.exist_openNormalSubgroup_sub_open_nhds_of_one
    (stabilizer_isOpen G x) (one_mem _)
  have := (Algebra.IsInvariant.isIntegral A (FixedPoints.subalgebra A B N.1.1) (G ⧸ N.1.1)).1
    ⟨x, fun g ↦ hN g.2⟩
  exact this.map (FixedPoints.subalgebra A B N.1.1).val

/-- `G` acts transitively on the prime ideals of `B` above a given prime ideal of `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a16d714bbccb28eda032a355518d8853069d2f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
