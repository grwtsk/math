# count_le_setNCard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49acb44e-bd0d-7bbf-96d4-15af7d57f968",
  "kind": "theorem",
  "lexical_name": "count_le_setNCard",
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
  "slug": "count-le-setncard--5a092149d9fee29d7af62d3c",
  "source": {
    "blob": "555a7b8c9df11f27e0f61a4cdbd2f32d851e8a98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variant11bd55c3841129893fe9e121164bc1b2d89f68b5ca55b767e3793b53d56d4227.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a092149d9fee29d7af62d3ceaa8bdb685ee854c762ec0df7f2829ede188555b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variant11bd55c3841129893fe9e121164bc1b2d89f68b5ca55b767e3793b53d56d4227.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49acb44e-bd0d-7bbf-96d4-15af7d57f968`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_le_setNCard (h : { k | p k }.Finite) : count p n ≤ Set.ncard { k | p k } := by
  rw [Set.ncard_def, ← ENat.natCast_le_natCast, ENat.natCast_toNat (by simpa)]
  exact count_le_setENCard n

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variant11bd55c3841129893fe9e121164bc1b2d89f68b5ca55b767e3793b53d56d4227.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variant11bd55c3841129893fe9e121164bc1b2d89f68b5ca55b767e3793b53d56d4227.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `555a7b8c9df11f27e0f61a4cdbd2f32d851e8a98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
