# of_monotone_of_lt_cof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6daa80d-875d-24bb-8add-7a948a7ae9a0",
  "kind": "theorem",
  "lexical_name": "of_monotone_of_lt_cof",
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
  "slug": "of-monotone-of-lt-cof--a35a6e1e01ad226a069b1c82",
  "source": {
    "blob": "ac4e6b57249502f7adff3b44826b0be89c2c77a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/EventuallyConst/Variant12f4f872bce1f4dcd0863ccf913868f1fbc466fb68e1f978c917a78eec877a4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a35a6e1e01ad226a069b1c827a0428e62ed9fb3af77706886f79e2a32724334b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/EventuallyConst/Variant12f4f872bce1f4dcd0863ccf913868f1fbc466fb68e1f978c917a78eec877a4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6daa80d-875d-24bb-8add-7a948a7ae9a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_monotone_of_lt_cof (hf : Monotone f) (hα : lift.{u} #β < lift.{v} (cof α)) :
    atTop.EventuallyConst f := by
  have : Nonempty α := by by_contra!; simp at hα
  refine .of_not_isCofinal_rangeSplitting hf ?_
  contrapose! hα
  classical let := hf.isChain_range.lt_of_le.linearOrder
  rw [← lift_cof_congr_of_strictMono (rangeSplitting_strictMono hf) hα, lift_le]
  exact (cof_le_cardinalMk _).trans (mk_set_le _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/EventuallyConst/Variant12f4f872bce1f4dcd0863ccf913868f1fbc466fb68e1f978c917a78eec877a4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/EventuallyConst/Variant12f4f872bce1f4dcd0863ccf913868f1fbc466fb68e1f978c917a78eec877a4c.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac4e6b57249502f7adff3b44826b0be89c2c77a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
