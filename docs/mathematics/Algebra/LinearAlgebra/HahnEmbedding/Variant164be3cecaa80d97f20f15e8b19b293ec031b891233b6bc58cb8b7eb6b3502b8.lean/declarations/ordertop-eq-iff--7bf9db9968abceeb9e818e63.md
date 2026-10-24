# orderTop_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71da2c4628ce8fd00d15e2167fbe86d9e4b8d71f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 427,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/164be3cecaa80d97f20f15e8b19b293ec031b891233b6bc58cb8b7eb6b3502b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e141f497-7caa-d538-c239-0ae54f220bd0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f356707-7ca4-2e93-86d4-9f65f27e3223",
  "kind": "theorem",
  "lexical_name": "orderTop_eq_iff",
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
  "slug": "ordertop-eq-iff--7bf9db9968abceeb9e818e63",
  "source": {
    "blob": "71da2c4628ce8fd00d15e2167fbe86d9e4b8d71f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 427,
    "path": "GRWTSK/Algebra/LinearAlgebra/HahnEmbedding/Variant164be3cecaa80d97f20f15e8b19b293ec031b891233b6bc58cb8b7eb6b3502b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bf9db9968abceeb9e818e63976e4b05d47c1984ef36a846ae6387e4a6bba89b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HahnEmbedding/Variant164be3cecaa80d97f20f15e8b19b293ec031b891233b6bc58cb8b7eb6b3502b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f356707-7ca4-2e93-86d4-9f65f27e3223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderTop_eq_iff [IsOrderedAddMonoid R] [Archimedean R] (x y : f.val.domain) :
    (ofLex (f.val x)).orderTop = (ofLex (f.val y)).orderTop ↔
    ArchimedeanClass.mk x.val = .mk y.val := by
  obtain hsubsingleton | hnontrivial := subsingleton_or_nontrivial M
  · have : y = x := Subtype.ext <| hsubsingleton.allEq _ _
    simp [this]
  have hnonempty : Nonempty (FiniteArchimedeanClass M) := inferInstance
  obtain c := hnonempty.some
  have : Nontrivial R := (seed.strictMono_coeff c).injective.nontrivial
  rw [← archimedeanClassMk_eq_iff]
  simp_rw [← HahnSeries.archimedeanClassOrderIsoWithTop_apply]
  rw [(HahnSeries.archimedeanClassOrderIsoWithTop (FiniteArchimedeanClass M) R).injective.eq_iff]

/-- Archimedean class of the input is transferred to `HahnSeries.orderTop`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HahnEmbedding/Variant164be3cecaa80d97f20f15e8b19b293ec031b891233b6bc58cb8b7eb6b3502b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HahnEmbedding/Variant164be3cecaa80d97f20f15e8b19b293ec031b891233b6bc58cb8b7eb6b3502b8.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71da2c4628ce8fd00d15e2167fbe86d9e4b8d71f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
