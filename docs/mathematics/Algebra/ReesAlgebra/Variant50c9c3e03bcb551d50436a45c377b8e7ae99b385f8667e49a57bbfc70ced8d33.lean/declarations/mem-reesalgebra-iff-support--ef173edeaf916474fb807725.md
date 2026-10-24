# mem_reesAlgebra_iff_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f0717021322edad132acffaad2ad324922375b7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50c9c3e03bcb551d50436a45c377b8e7ae99b385f8667e49a57bbfc70ced8d33.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5b15107-ea73-4232-9b8a-09034692858c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91ab3626-c98a-c597-75a1-1945e3d907d5",
  "kind": "theorem",
  "lexical_name": "mem_reesAlgebra_iff_support",
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
  "slug": "mem-reesalgebra-iff-support--ef173edeaf916474fb807725",
  "source": {
    "blob": "f0717021322edad132acffaad2ad324922375b7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 67,
    "path": "GRWTSK/Algebra/ReesAlgebra/Variant50c9c3e03bcb551d50436a45c377b8e7ae99b385f8667e49a57bbfc70ced8d33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef173edeaf916474fb8077250ce21114befc4b0ba942f5e56d77c195b644713b",
  "verification": {
    "reference": "docs/verification/Algebra/ReesAlgebra/Variant50c9c3e03bcb551d50436a45c377b8e7ae99b385f8667e49a57bbfc70ced8d33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91ab3626-c98a-c597-75a1-1945e3d907d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_reesAlgebra_iff_support (f : R[X]) :
    f ∈ reesAlgebra I ↔ ∀ i ∈ f.support, f.coeff i ∈ I ^ i := by
  apply forall_congr'
  intro a
  rw [mem_support_iff, Iff.comm, Classical.imp_iff_right_iff, Ne, ← imp_iff_not_or]
  exact fun e => e.symm ▸ (I ^ a).zero_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ReesAlgebra/Variant50c9c3e03bcb551d50436a45c377b8e7ae99b385f8667e49a57bbfc70ced8d33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ReesAlgebra/Variant50c9c3e03bcb551d50436a45c377b8e7ae99b385f8667e49a57bbfc70ced8d33.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0717021322edad132acffaad2ad324922375b7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
