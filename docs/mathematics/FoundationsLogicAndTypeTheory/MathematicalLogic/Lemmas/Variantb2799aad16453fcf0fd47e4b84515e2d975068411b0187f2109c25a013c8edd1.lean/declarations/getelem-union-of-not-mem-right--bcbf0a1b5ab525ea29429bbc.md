# getElem_union_of_not_mem_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4804634f-ea38-08ba-eea9-2a217005612f",
  "kind": "theorem",
  "lexical_name": "getElem_union_of_not_mem_right",
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
  "slug": "getelem-union-of-not-mem-right--bcbf0a1b5ab525ea29429bbc",
  "source": {
    "blob": "2bb64fa006964702c4bb89ed81b48014fbf07ea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1536,
    "line": 1530,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantb2799aad16453fcf0fd47e4b84515e2d975068411b0187f2109c25a013c8edd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcbf0a1b5ab525ea29429bbce8bdbec2f40c21010a636315c6e3adc0d010086c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantb2799aad16453fcf0fd47e4b84515e2d975068411b0187f2109c25a013c8edd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4804634f-ea38-08ba-eea9-2a217005612f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1530–1536.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem_union_of_not_mem_right [EquivBEq α] [LawfulHashable α]
    {k : α} (not_mem : ¬k ∈ m₂) {h'} :
    (m₁ ∪ m₂)[k]'h' = m₁[k]'(mem_of_mem_union_of_not_mem_right h' not_mem) :=
  @DHashMap.Const.get_union_of_not_mem_right _ _ _ _ m₁.inner m₂.inner _ _ k not_mem h'

/- get -/
@[deprecated getElem_union_of_mem_right (since := "2025-12-10")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantb2799aad16453fcf0fd47e4b84515e2d975068411b0187f2109c25a013c8edd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantb2799aad16453fcf0fd47e4b84515e2d975068411b0187f2109c25a013c8edd1.lean#L1530).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bb64fa006964702c4bb89ed81b48014fbf07ea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
