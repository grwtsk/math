# nnqsmul_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d86e6421f71b249a7c27edbd96d5743725a64b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8e634d1-ee80-19f6-71c5-36d7415de0bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d81ac43e-2e74-1d44-31b8-ffc3371adb46",
  "kind": "theorem",
  "lexical_name": "nnqsmul_mk",
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
  "slug": "nnqsmul-mk--3cd0dd83651c88c0bc2fca0e",
  "source": {
    "blob": "4d86e6421f71b249a7c27edbd96d5743725a64b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 145,
    "path": "GRWTSK/Algebra/UniversalAlgebra/DivisibleHull/Variant0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cd0dd83651c88c0bc2fca0ec7a220e3d9d25e3126f09763806b56bea8519fa6",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/DivisibleHull/Variant0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d81ac43e-2e74-1d44-31b8-ffc3371adb46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nnqsmul_mk (a : ℚ≥0) (m : M) (s : ℕ+) :
    a • mk m s = mk (a.num • m) (⟨a.den, a.den_pos⟩ * s) := by
  convert! LocalizedModule.mk'_smul_mk ℚ≥0 a.num m ⟨a.den, by simp⟩ (↑ⁿ s)
  simp [IsLocalization.eq_mk'_iff_mul_eq]

section TorsionFree
variable [IsAddTorsionFree M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/DivisibleHull/Variant0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/DivisibleHull/Variant0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d86e6421f71b249a7c27edbd96d5743725a64b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
