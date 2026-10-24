# divInt_eq_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a36d92b5f0be7d3303a375cb136f13a544481eb0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 477,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c877403d-e560-95ba-36be-79fd8bd97f30",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee3935cd-22c8-0e3e-1f02-6ef48e53c48b",
  "kind": "theorem",
  "lexical_name": "divInt_eq_div",
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
  "slug": "divint-eq-div--5ae4001c6ad5fc113fe5be7d",
  "source": {
    "blob": "a36d92b5f0be7d3303a375cb136f13a544481eb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 477,
    "path": "GRWTSK/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ae4001c6ad5fc113fe5be7d90ceac68b3d7482c90b906202bdfb8613c68a7dd",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee3935cd-22c8-0e3e-1f02-6ef48e53c48b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divInt_eq_div (n d : ℤ) : n /. d = (n : ℚ) / d := by
  by_cases d0 : d = 0
  · simp [d0, div_zero]
  simp [division_def, coe_int_eq_divInt, mul_def' one_ne_zero d0]
#align rat.mk_eq_div Rat.divInt_eq_div

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a36d92b5f0be7d3303a375cb136f13a544481eb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
