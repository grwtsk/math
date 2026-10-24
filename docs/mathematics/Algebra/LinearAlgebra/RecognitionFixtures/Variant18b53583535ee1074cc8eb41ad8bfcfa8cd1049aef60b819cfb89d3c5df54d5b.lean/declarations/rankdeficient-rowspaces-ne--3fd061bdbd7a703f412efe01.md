# rankDeficient_rowSpaces_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "533409c12f666301de90c76bc96084f7ecec11be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72dabc2a-3c78-1aed-0157-4d48255a019d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6763e247-9fee-3cbf-f1cb-7edb73533615",
  "kind": "theorem",
  "lexical_name": "rankDeficient_rowSpaces_ne",
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
  "slug": "rankdeficient-rowspaces-ne--3fd061bdbd7a703f412efe01",
  "source": {
    "blob": "533409c12f666301de90c76bc96084f7ecec11be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 63,
    "path": "GRWTSK/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fd061bdbd7a703f412efe0112609dcc9462da0a1f6e95f1cde1f7256be1bc26",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6763e247-9fee-3cbf-f1cb-7edb73533615`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rankDeficient_rowSpaces_ne :
    frameRowSpace rankDeficientLeft ≠ frameRowSpace rankDeficientRight := by
  intro he
  have hm := row_mem_frameRowSpace rankDeficientLeft (0 : Fin 2)
  rw [he] at hm
  obtain ⟨u, hu⟩ :=
    (mem_frameRowSpace_iff rankDeficientRight (rankDeficientLeft.row 0)).mp hm
  have hh := congrFun hu (0 : Fin 2)
  change (u ᵥ* rankDeficientRight) 0 = rankDeficientLeft 0 0 at hh
  norm_num [Matrix.vecMul, dotProduct, rankDeficientRight, rankDeficientLeft] at hh

/-- A concrete counterexample to omitting rank from projective-minor recognition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `533409c12f666301de90c76bc96084f7ecec11be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
