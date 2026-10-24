# dual_eq_zero_of_degree_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "189d9844c0b3a5531319d2edbfc4c7cb0f600bb3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 639,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ed26a8e-f21c-a13a-fd9e-a0f4e57d312c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c09c62b1-3810-9ca7-61ad-5ff4b230ba80",
  "kind": "theorem",
  "lexical_name": "dual_eq_zero_of_degree_ne",
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
  "slug": "dual-eq-zero-of-degree-ne--2e08c868b7d65a840932d6af",
  "source": {
    "blob": "189d9844c0b3a5531319d2edbfc4c7cb0f600bb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 655,
    "line": 639,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e08c868b7d65a840932d6af37a526acc6958582fa08202f0aba0c0ccefad73a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c09c62b1-3810-9ca7-61ad-5ff4b230ba80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 639–655.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dual_eq_zero_of_degree_ne
    (H : TraceHomologyComparison certificate)
    {k : Nat}
    (hk : k ≠ q)
    (x : H.DualHomology k) :
    letI := H.dualAddCommGroup k
    x = 0 := by
  letI := H.dualAddCommGroup k
  letI := H.dualModule k
  have hx : H.dualCompare k x = 0 :=
    SingleHandleComplex.homology_eq_zero_of_ne R q k hk
      (H.dualCompare k x)
  have hx' : H.dualCompare k x = H.dualCompare k 0 :=
    hx.trans (H.dualCompare k).map_zero.symm
  exact (H.dualCompare k).injective hx'

/-- The concrete incoming generator transported from the single-handle complex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean#L639).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `189d9844c0b3a5531319d2edbfc4c7cb0f600bb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
