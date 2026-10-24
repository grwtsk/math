# xi_odd_derivative_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d0037b2ee5d16af481772cbdeed2ee05e1ff673",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad981222-a10e-1bd3-6c25-18d2aa2fc1b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab075aeb-7067-11dd-191e-fcbad0e4cc07",
  "kind": "theorem",
  "lexical_name": "xi_odd_derivative_center",
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
  "slug": "xi-odd-derivative-center--5774030e393d07595730e36a",
  "source": {
    "blob": "0d0037b2ee5d16af481772cbdeed2ee05e1ff673",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 91,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5774030e393d07595730e36a942efe35e0dbf4b32127e2982343f5cfd6ac242e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab075aeb-7067-11dd-191e-fcbad0e4cc07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xi_odd_derivative_center (k : ℕ) :
    iteratedDeriv (2 * k + 1) xi (1 / 2) = 0 := by
  have hf : (fun z : ℂ => xi (1 - z)) = xi := funext xi_one_sub
  have he := congrFun (iteratedDeriv_comp_const_sub (2 * k + 1) xi 1) (1 / 2)
  rw [hf] at he
  have hh : (1 : ℂ) - 1 / 2 = 1 / 2 := by norm_num
  rw [hh] at he
  have hsign : (-1 : ℂ) ^ (2 * k + 1) = -1 := by
    rw [pow_add, pow_mul]
    norm_num
  rw [hsign] at he
  change iteratedDeriv (2 * k + 1) xi (1 / 2) =
    (-1 : ℂ) * iteratedDeriv (2 * k + 1) xi (1 / 2) at he
  linear_combination (1 / 2 : ℂ) * he

/-- The existing real coefficient is exactly the complex Taylor coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d0037b2ee5d16af481772cbdeed2ee05e1ff673` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
