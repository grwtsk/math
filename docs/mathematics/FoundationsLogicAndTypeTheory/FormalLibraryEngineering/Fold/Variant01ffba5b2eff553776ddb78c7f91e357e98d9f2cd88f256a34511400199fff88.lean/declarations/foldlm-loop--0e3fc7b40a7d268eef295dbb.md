# foldlM_loop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3dd631473c41be1663c2a732ea31a1354934ade7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:505ffbe4-8366-ed96-6830-ca3febe0b9ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:abccfc21-0378-f8ac-5568-2742ac8437d9",
  "kind": "theorem",
  "lexical_name": "foldlM_loop",
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
  "slug": "foldlm-loop--0e3fc7b40a7d268eef295dbb",
  "source": {
    "blob": "3dd631473c41be1663c2a732ea31a1354934ade7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 120,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e3fc7b40a7d268eef295dbbfd12d1cf36484b183eb392b35f00411278ddbf54",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abccfc21-0378-f8ac-5568-2742ac8437d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem foldlM_loop [Monad m] (f : α → Fin (n+1) → m α) (x) (h : i < n+1) :
    foldlM.loop (n+1) f x i = f x ⟨i, h⟩ >>= (foldlM.loop n (fun x j => f x j.succ) . i) := by
  if h' : i < n then
    rw [foldlM_loop_lt _ _ h]
    congr; funext
    rw [foldlM_loop_lt _ _ h', foldlM_loop]; rfl
  else
    cases Nat.le_antisymm (Nat.le_of_lt_succ h) (Nat.not_lt.1 h')
    rw [foldlM_loop_lt _ _ h]
    congr; funext
    rw [foldlM_loop_eq, foldlM_loop_eq]
termination_by n - i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dd631473c41be1663c2a732ea31a1354934ade7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
