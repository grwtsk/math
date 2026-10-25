# get_union_of_not_mem_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ef42ce9-1295-ae50-67b6-2dd69a5f3397",
  "kind": "theorem",
  "lexical_name": "get_union_of_not_mem_right",
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
  "slug": "get-union-of-not-mem-right--4ff4b8354c23ef19c963305c",
  "source": {
    "blob": "4faad42f9986e3bde2a550d1cd20b2a5b4d80e19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 943,
    "line": 938,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Varianta56e37d15a5f8fa551d00b5fc53067ac29b25313fbe96abe7cf982d4d553c190.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ff4b8354c23ef19c963305c01cf51238ebc9f0b4ca6ef3891da007373acf960",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Varianta56e37d15a5f8fa551d00b5fc53067ac29b25313fbe96abe7cf982d4d553c190.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ef42ce9-1295-ae50-67b6-2dd69a5f3397`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 938–943.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem get_union_of_not_mem_right [EquivBEq α] [LawfulHashable α] (h₁ : m₁.WF) (h₂ : m₂.WF)
    {k : α} (not_mem : ¬k ∈ m₂) {h'} :
    (m₁ ∪ m₂).get k h' = m₁.get k (mem_of_mem_union_of_not_mem_right h₁ h₂ h' not_mem) :=
  @HashMap.Raw.getKey_union_of_not_mem_right _ _ _ _ m₁.inner m₂.inner _ _ h₁.out h₂.out k not_mem h'

/- getD -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Varianta56e37d15a5f8fa551d00b5fc53067ac29b25313fbe96abe7cf982d4d553c190.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Varianta56e37d15a5f8fa551d00b5fc53067ac29b25313fbe96abe7cf982d4d553c190.lean#L938).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4faad42f9986e3bde2a550d1cd20b2a5b4d80e19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
