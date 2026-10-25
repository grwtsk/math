# toList_rcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58d97b86-0e69-81d0-877d-621c4ed1cbe9",
  "kind": "theorem",
  "lexical_name": "toList_rcc",
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
  "slug": "tolist-rcc--9959a509f958a8f7b942fbe9",
  "source": {
    "blob": "213075eaf7ca988f6f5110922b24133969483199",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant3704c3ea1f74a34b293e848031703490ca4094faff372a61fc8a7d50fc1b7d88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9959a509f958a8f7b942fbe97766853b1729ddf7d4871d37d57525833798241d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant3704c3ea1f74a34b293e848031703490ca4094faff372a61fc8a7d50fc1b7d88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58d97b86-0e69-81d0-877d-621c4ed1cbe9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] public theorem toList_rcc {α : Type u} {β : Type v}
    (cmp : α → α → Ordering := by exact compare)  [TransCmp cmp]
    {t : TreeMap α β cmp} {lowerBound upperBound : α} : t[lowerBound...=upperBound].toList =
    t.toList.filter (fun e => (cmp e.fst lowerBound).isGE ∧ (cmp e.fst upperBound).isLE) :=
  @DTreeMap.Internal.Const.toList_rcc α β ⟨cmp⟩ _ t.inner.inner (@t.inner.wf.ordered α (fun _ => β) ⟨cmp⟩ _) lowerBound upperBound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant3704c3ea1f74a34b293e848031703490ca4094faff372a61fc8a7d50fc1b7d88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant3704c3ea1f74a34b293e848031703490ca4094faff372a61fc8a7d50fc1b7d88.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `213075eaf7ca988f6f5110922b24133969483199` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
