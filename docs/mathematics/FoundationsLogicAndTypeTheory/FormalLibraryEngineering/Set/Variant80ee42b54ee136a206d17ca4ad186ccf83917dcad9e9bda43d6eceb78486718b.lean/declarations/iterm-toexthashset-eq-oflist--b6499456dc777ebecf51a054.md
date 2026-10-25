# IterM.toExtHashSet_eq_ofList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db27432e-5aed-8c1b-3e62-dbc83664f223",
  "kind": "theorem",
  "lexical_name": "IterM.toExtHashSet_eq_ofList",
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
  "slug": "iterm-toexthashset-eq-oflist--b6499456dc777ebecf51a054",
  "source": {
    "blob": "383a526faba8b14cf07bdd9882abbb597bf3b4b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant80ee42b54ee136a206d17ca4ad186ccf83917dcad9e9bda43d6eceb78486718b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6499456dc777ebecf51a05455952ef78899e16a2a3e05fbd9f9b887c174f569",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant80ee42b54ee136a206d17ca4ad186ccf83917dcad9e9bda43d6eceb78486718b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db27432e-5aed-8c1b-3e62-dbc83664f223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.toExtHashSet_eq_ofList {α β : Type w} {_ : BEq β} {_ : Hashable β} [EquivBEq β]
    [LawfulHashable β] {m : Type w → Type w'} [Monad m] [LawfulMonad m] [Iterator α m β]
    [Finite α m] [IteratorLoop α m m] [LawfulIteratorLoop α m m] {it : IterM (α := α) m β} :
    it.toExtHashSet = ExtHashSet.ofList <$> it.toList := by
  simp only [toExtHashSet, ← foldl_toList, ← ExtHashSet.ofList_eq_foldl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant80ee42b54ee136a206d17ca4ad186ccf83917dcad9e9bda43d6eceb78486718b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant80ee42b54ee136a206d17ca4ad186ccf83917dcad9e9bda43d6eceb78486718b.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `383a526faba8b14cf07bdd9882abbb597bf3b4b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
