# countToTen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d37cd710f82cf563ce14139bb3094078ba76bf3b0767143ecaba560df22be14",
  "kind": "def",
  "lexical_name": "countToTen",
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
  "slug": "counttoten--de1fb719e73acd275289cba1",
  "source": {
    "blob": "a89e9ff967279cbdd81486d97bfc772d02f2c620",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 17,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RefreshComponent/Variant0c9f0b3a443d46685c33ab9636e32d5a1d580d133617fb3d67e1db85c5f9c1a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de1fb719e73acd275289cba188554c444ef623f16d85bb254dacc4ad5a501228",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RefreshComponent/Variant0c9f0b3a443d46685c33ab9636e32d5a1d580d133617fb3d67e1db85c5f9c1a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d37cd710f82cf563ce14139bb3094078ba76bf3b0767143ecaba560df22be14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def countToTen : CoreM Html := do
  mkRefreshComponentM (.text "Let's count to ten!!!") fun token ↦ do
    let mut n := 0
    repeat do
      IO.sleep 1000
      dbg_trace "counted {n}"
      Core.checkSystem "count to ten"
      if n = 10 then
        token.update <| .text s!"Wie niet weg is, is gezien, ik kom!!!"
        break
      token.update <| .text s!"{n + 1}!!!"
      n := n + 1
-- If you close and reopen the infoview, the counting continues as if it was open the whole time.
#html countToTen

-- Here, we duplicate the widget using the same underlying computation
-- #html (do let x ← countToTen; return <span>{x}<br/>{x}</span>)

-- Here, we duplicate the widget and duplicate the underlying computation
-- #html (return <span>{← countToTen}<br/>{← countToTen}</span>)



/-! Example 2: Print the selected expressions one by one in an infinite loop. -/

@[server_rpc_method]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RefreshComponent/Variant0c9f0b3a443d46685c33ab9636e32d5a1d580d133617fb3d67e1db85c5f9c1a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RefreshComponent/Variant0c9f0b3a443d46685c33ab9636e32d5a1d580d133617fb3d67e1db85c5f9c1a9.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a89e9ff967279cbdd81486d97bfc772d02f2c620` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
