# fastGrowingε₀_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b81ff40a-e3fd-3c69-460f-f08d063b535a",
  "kind": "theorem",
  "lexical_name": "fastGrowingε₀_two",
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
  "slug": "fastgrowing-two--60752cc78c6d7a838ffa94f2",
  "source": {
    "blob": "78e96d284523ba03b17d77bc31a38269fdecef44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1136,
    "line": 1126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant98d5b0aa3707c15596a0acaa0228fd50fb8e57a226743c7c9a112f1ffe10cc8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60752cc78c6d7a838ffa94f2867155f48a364a718b6767973d2ed73071110d25",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant98d5b0aa3707c15596a0acaa0228fd50fb8e57a226743c7c9a112f1ffe10cc8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b81ff40a-e3fd-3c69-460f-f08d063b535a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1126–1136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fastGrowingε₀_two : fastGrowingε₀ 2 = 2048 := by
  norm_num [fastGrowingε₀, show oadd 0 1 0 = 1 from rfl, @fastGrowing_limit (oadd 1 1 0) _ rfl,
    show oadd 0 (2 : Nat).succPNat 0 = 3 from rfl, @fastGrowing_succ 3 2 rfl]

end ONote

/-- The type of normal ordinal notations.

It would have been nicer to define this right in the inductive type, but `NF o` requires `repr`
which requires `ONote`, so all these things would have to be defined at once, which messes up the VM
representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant98d5b0aa3707c15596a0acaa0228fd50fb8e57a226743c7c9a112f1ffe10cc8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant98d5b0aa3707c15596a0acaa0228fd50fb8e57a226743c7c9a112f1ffe10cc8a.lean#L1126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78e96d284523ba03b17d77bc31a38269fdecef44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
