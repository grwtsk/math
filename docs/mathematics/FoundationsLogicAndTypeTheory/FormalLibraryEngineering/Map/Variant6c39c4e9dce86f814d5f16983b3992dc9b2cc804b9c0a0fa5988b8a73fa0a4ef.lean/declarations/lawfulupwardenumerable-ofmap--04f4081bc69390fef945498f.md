# LawfulUpwardEnumerable.ofMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33cc744a-56cf-f6d8-a236-b508258d4f9b",
  "kind": "theorem",
  "lexical_name": "LawfulUpwardEnumerable.ofMap",
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
  "slug": "lawfulupwardenumerable-ofmap--04f4081bc69390fef945498f",
  "source": {
    "blob": "cf82671c04752c76fddc75524ad7ab2eecfbd9d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04f4081bc69390fef945498ffb8200678896f79c9f51b0621824f8a93a80796e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33cc744a-56cf-f6d8-a236-b508258d4f9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LawfulUpwardEnumerable.ofMap [LawfulUpwardEnumerable β] (f : Map α β) :
    LawfulUpwardEnumerable α where
  ne_of_lt a b := by
    simpa only [f.lt_iff, ← f.injective.ne_iff] using LawfulUpwardEnumerable.ne_of_lt _ _
  succMany?_zero a := by
    apply Option.map_injective f.injective
    simpa [← f.succMany?_toFun] using LawfulUpwardEnumerable.succMany?_zero _
  succMany?_add_one n a := by
    apply Option.map_injective f.injective
    rw [← f.succMany?_toFun, LawfulUpwardEnumerable.succMany?_add_one,
      f.succMany?_toFun, Option.bind_map, Map.succ?_toFun', Option.map_bind]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant6c39c4e9dce86f814d5f16983b3992dc9b2cc804b9c0a0fa5988b8a73fa0a4ef.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf82671c04752c76fddc75524ad7ab2eecfbd9d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
