# norm_complexWeight_le_posWeightReal_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "917c91929ca14e5960311444697672fc878f4a72",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1167813b-82a1-c13a-1477-208c3d0550e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf670d3a-da65-976e-01be-f67beda22ea4",
  "kind": "theorem",
  "lexical_name": "norm_complexWeight_le_posWeightReal_re",
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
  "slug": "norm-complexweight-le-posweightreal-re--63078f3af6cb2688ecf1c313",
  "source": {
    "blob": "917c91929ca14e5960311444697672fc878f4a72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 52,
    "path": "GRWTSK/Analysis/ComplexAnalysis/ComplexWeights/Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63078f3af6cb2688ecf1c313a932da40f2f1c6fb4a76b536f14d00aa9517e951",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ComplexWeights/Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf670d3a-da65-976e-01be-f67beda22ea4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_complexWeight_le_posWeightReal_re
    (s : Complex)
    (n : Nat) :
    ‖complexWeight s n‖ ≤ posWeightReal s.re n := by
  by_cases hn : n = 0
  · simp [complexWeight, posWeightReal, hn]
  · exact le_of_eq (norm_complexWeight_eq_posWeightReal_re s (Nat.pos_of_ne_zero hn))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/ComplexWeights/Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/ComplexWeights/Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `917c91929ca14e5960311444697672fc878f4a72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
