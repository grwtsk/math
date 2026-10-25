# goldConj_irrational

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f3a4cb722607d594165d76ae139bc414ee6be01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a834398-7561-76bf-8aac-e06f5185c72f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fdcb08f9-da61-16ed-67ea-deb4df4a667d",
  "kind": "theorem",
  "lexical_name": "goldConj_irrational",
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
  "slug": "goldconj-irrational--0e2d2fe7bf74128da811a6c3",
  "source": {
    "blob": "5f3a4cb722607d594165d76ae139bc414ee6be01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e2d2fe7bf74128da811a6c39436263343591c617080ed706d89eb13f98e3f5a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdcb08f9-da61-16ed-67ea-deb4df4a667d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldConj_irrational : Irrational ψ := by
  have := Nat.Prime.irrational_sqrt (show Nat.Prime 5 by norm_num)
  have := this.rat_sub 1
  have := this.rat_mul (show (0.5 : ℚ) ≠ 0 by norm_num)
  convert this
  norm_num
  field_simp
#align gold_conj_irrational goldConj_irrational

/-!
## Links with Fibonacci sequence
-/


section Fibrec

variable {α : Type*} [CommSemiring α]

/-- The recurrence relation satisfied by the Fibonacci sequence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f3a4cb722607d594165d76ae139bc414ee6be01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
