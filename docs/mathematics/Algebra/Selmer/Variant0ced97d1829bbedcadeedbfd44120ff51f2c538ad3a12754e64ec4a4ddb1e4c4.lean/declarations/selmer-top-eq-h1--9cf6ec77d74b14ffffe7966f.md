# selmer_top_eq_h1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e4d0ee759ef29257c1b1937738615baecf13a254",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a970f55-9ff5-03f7-7ab7-37a2b9a45dd8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:461bdb45-97d6-4fe7-0204-e96bb9759e00",
  "kind": "theorem",
  "lexical_name": "selmer_top_eq_h1",
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
  "slug": "selmer-top-eq-h1--9cf6ec77d74b14ffffe7966f",
  "source": {
    "blob": "e4d0ee759ef29257c1b1937738615baecf13a254",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 129,
    "path": "GRWTSK/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cf6ec77d74b14ffffe7966f8771a634775c1361a80bbf606006ae18cb31b954",
  "verification": {
    "reference": "docs/verification/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:461bdb45-97d6-4fe7-0204-e96bb9759e00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selmer_top_eq_h1
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρG : AdditiveAction G A}
    (V : Type w)
    (Gv : V → FiniteGroupData.{u})
    (ρv : (v : V) → AdditiveAction (Gv v) A)
    (ιv : (v : V) → ActionHom (ρv v) ρG) :
    FiniteSelmerGroup
      (G := G)
      (A := A)
      (ρG := ρG)
      V Gv ρv ιv
      (fun v =>
        FiniteSubgroup.top (FiniteH1.additiveStructure (Gv v) A (ρv v))) =
    FiniteSubgroup.top (FiniteH1.additiveStructure G A ρG) := by
  apply FiniteSubgroup.ext
  intro c
  constructor
  · intro _h
    trivial
  · intro _h v
    trivial

/-- Enlarging all local conditions enlarges the Selmer subgroup. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4d0ee759ef29257c1b1937738615baecf13a254` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
