# multinomial_denominator_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f78ec32-35f0-a8cd-1351-af772425db29",
  "kind": "theorem",
  "lexical_name": "multinomial_denominator_pos",
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
  "slug": "multinomial-denominator-pos--72223cba4e899480db47141b",
  "source": {
    "blob": "e7847ad36a282111b00c013749977e79478d753e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M536f75726365547265652f4d756c74696e6f6d69616c2e6c65616e/Variant54a387cf266851b8e684b1d87fb053e220661603b9fe8c23fb7c9c9eee0a1003.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72223cba4e899480db47141b1e65d606e9f4ce107f780a5779bcee60dea31875",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M536f75726365547265652f4d756c74696e6f6d69616c2e6c65616e/Variant54a387cf266851b8e684b1d87fb053e220661603b9fe8c23fb7c9c9eee0a1003.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f78ec32-35f0-a8cd-1351-af772425db29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multinomial_denominator_pos (w : BraidWeight) :
    0 <
      FWR.Pipeline.CenterWeighted.BraidWeight.factorial w.left *
      FWR.Pipeline.CenterWeighted.BraidWeight.factorial w.center *
      FWR.Pipeline.CenterWeighted.BraidWeight.factorial w.right := by
  exact Think.Pipeline.Center.multinomial_denominator_pos w

end Think.SourceTree
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M536f75726365547265652f4d756c74696e6f6d69616c2e6c65616e/Variant54a387cf266851b8e684b1d87fb053e220661603b9fe8c23fb7c9c9eee0a1003.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M536f75726365547265652f4d756c74696e6f6d69616c2e6c65616e/Variant54a387cf266851b8e684b1d87fb053e220661603b9fe8c23fb7c9c9eee0a1003.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7847ad36a282111b00c013749977e79478d753e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
