# toList_iter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:783c4dec-fd44-5fc9-6bf1-76ae9e6086eb",
  "kind": "theorem",
  "lexical_name": "toList_iter",
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
  "slug": "tolist-iter--09fdc6cd33fe6136d0a0cbd2",
  "source": {
    "blob": "4d3233b6a89840852e869b4614829fdd7596fb6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant4d67bf5448cf85e8172633f8abd39f21b8d5a92527e7b1aa14bf4d95fa01b15a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09fdc6cd33fe6136d0a0cbd2def0a755632b9efdac83060f52669f1e62ec4d6a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant4d67bf5448cf85e8172633f8abd39f21b8d5a92527e7b1aa14bf4d95fa01b15a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:783c4dec-fd44-5fc9-6bf1-76ae9e6086eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem toList_iter {cmp : α → α → Ordering} (m : Raw α cmp) :
    m.iter.toList = m.toList := by
  rw [iter, Iter.toList_map, TreeMap.Raw.toList_iter, TreeMap.Raw.toList]
  rw [TreeSet.Raw.toList]
  rw [Std.DTreeMap.Internal.Impl.foldr_eq_foldr_toList]
  simp only [DTreeMap.Raw.Const.map_fst_toList_eq_keys, List.empty_eq, List.foldr_cons_eq_append,
    List.append_nil]
  rw [DTreeMap.Raw.keys, ← Std.DTreeMap.Internal.Impl.map_fst_toList_eq_keys]

end Std.TreeSet.Raw
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant4d67bf5448cf85e8172633f8abd39f21b8d5a92527e7b1aa14bf4d95fa01b15a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant4d67bf5448cf85e8172633f8abd39f21b8d5a92527e7b1aa14bf4d95fa01b15a.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d3233b6a89840852e869b4614829fdd7596fb6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
