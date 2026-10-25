# getElem_diff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:372ec785-1af2-911b-ffbb-c4f6eeaa562b",
  "kind": "theorem",
  "lexical_name": "getElem_diff",
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
  "slug": "getelem-diff--9245c9cf1cf50e93cca78685",
  "source": {
    "blob": "ca323a8bcae93039209fc46858aead059b881e3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2034,
    "line": 2028,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variant95beb372d42734456c1f70ef8c3c1c1239012213d28e96dc8e0753727b2adabf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9245c9cf1cf50e93cca78685c37b0a69ecbcc7f369aa60679975be0cb810b457",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variant95beb372d42734456c1f70ef8c3c1c1239012213d28e96dc8e0753727b2adabf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:372ec785-1af2-911b-ffbb-c4f6eeaa562b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2028–2034.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem_diff [EquivBEq α] [LawfulHashable α] (h₁ : m₁.WF) (h₂ : m₂.WF)
    {k : α} {h_mem : k ∈ m₁ \ m₂} :
    (m₁ \ m₂)[k]'h_mem = m₁[k]'((mem_diff_iff h₁ h₂).1 h_mem).1 :=
  @DHashMap.Raw.Const.get_diff _ _ _ _ m₁.inner m₂.inner _ _ h₁.out h₂.out k h_mem

/- get -/
@[deprecated getElem_diff (since := "2025-12-10")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variant95beb372d42734456c1f70ef8c3c1c1239012213d28e96dc8e0753727b2adabf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variant95beb372d42734456c1f70ef8c3c1c1239012213d28e96dc8e0753727b2adabf.lean#L2028).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca323a8bcae93039209fc46858aead059b881e3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
