# cast_natAbs_eq_nnabs_cast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4e4e5d0a41feb3388465279de8c85ef48ae53d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1076,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1aecd22d72bfc1555cf36af2b8aab88e7e2de1a625e2d6da1ac3fa2e29132404.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f63ac819-106a-c124-4a7c-9a09e6d4daf5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53532ae7-4e9b-4c6b-7e10-954165cc7b9b",
  "kind": "theorem",
  "lexical_name": "cast_natAbs_eq_nnabs_cast",
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
  "slug": "cast-natabs-eq-nnabs-cast--6286cbad2f011b647b8f501b",
  "source": {
    "blob": "a4e4e5d0a41feb3388465279de8c85ef48ae53d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1086,
    "line": 1076,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variant1aecd22d72bfc1555cf36af2b8aab88e7e2de1a625e2d6da1ac3fa2e29132404.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6286cbad2f011b647b8f501bd4f9e7b345884ef145b35f24dee840733ddd581c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NNReal/Variant1aecd22d72bfc1555cf36af2b8aab88e7e2de1a625e2d6da1ac3fa2e29132404.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53532ae7-4e9b-4c6b-7e10-954165cc7b9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1076–1086.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cast_natAbs_eq_nnabs_cast (n : ℤ) : (n.natAbs : ℝ≥0) = nnabs n := by
  ext
  rw [NNReal.coe_nat_cast, Int.cast_natAbs, Real.coe_nnabs, Int.cast_abs]
#align real.cast_nat_abs_eq_nnabs_cast Real.cast_natAbs_eq_nnabs_cast

end Real

namespace Mathlib.Meta.Positivity

open Lean Meta Qq Function

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NNReal/Variant1aecd22d72bfc1555cf36af2b8aab88e7e2de1a625e2d6da1ac3fa2e29132404.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variant1aecd22d72bfc1555cf36af2b8aab88e7e2de1a625e2d6da1ac3fa2e29132404.lean#L1076).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4e4e5d0a41feb3388465279de8c85ef48ae53d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
