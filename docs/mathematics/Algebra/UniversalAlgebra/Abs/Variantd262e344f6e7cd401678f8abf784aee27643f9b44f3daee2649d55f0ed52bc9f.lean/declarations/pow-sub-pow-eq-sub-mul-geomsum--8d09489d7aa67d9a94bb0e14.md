# pow_sub_pow_eq_sub_mul_geomSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a8f09f5b74f579e6a71c525987be701083ed40d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d262e344f6e7cd401678f8abf784aee27643f9b44f3daee2649d55f0ed52bc9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7ca0e0d-3f76-30f5-4689-ee98331c1bfb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a865a5b5-7cc2-384f-e66d-5dd52f86a7ac",
  "kind": "theorem",
  "lexical_name": "pow_sub_pow_eq_sub_mul_geomSum",
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
  "slug": "pow-sub-pow-eq-sub-mul-geomsum--8d09489d7aa67d9a94bb0e14",
  "source": {
    "blob": "6a8f09f5b74f579e6a71c525987be701083ed40d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 173,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Abs/Variantd262e344f6e7cd401678f8abf784aee27643f9b44f3daee2649d55f0ed52bc9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d09489d7aa67d9a94bb0e14940d939a048d7208f41857070dab11342d0ba952",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Abs/Variantd262e344f6e7cd401678f8abf784aee27643f9b44f3daee2649d55f0ed52bc9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a865a5b5-7cc2-384f-e66d-5dd52f86a7ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem pow_sub_pow_eq_sub_mul_geomSum :
    a ^ (n + 1) - b ^ (n + 1) = (a - b) * geomSum a b n := by
  induction n with | zero => simp [geomSum] | succ n ih => ?_
  rw [geomSum, mul_add, mul_comm a, ← mul_assoc, ← ih,
    sub_mul, sub_mul, ← pow_succ, ← pow_succ', mul_comm, sub_add_sub_cancel]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Abs/Variantd262e344f6e7cd401678f8abf784aee27643f9b44f3daee2649d55f0ed52bc9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Abs/Variantd262e344f6e7cd401678f8abf784aee27643f9b44f3daee2649d55f0ed52bc9f.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a8f09f5b74f579e6a71c525987be701083ed40d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
