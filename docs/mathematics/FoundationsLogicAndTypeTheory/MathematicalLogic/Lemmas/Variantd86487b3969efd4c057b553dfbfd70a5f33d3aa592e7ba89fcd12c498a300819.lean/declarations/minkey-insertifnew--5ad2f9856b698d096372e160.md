# minKey?_insertIfNew

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f70b5998-8376-b6d3-8e66-ce299a175a45",
  "kind": "theorem",
  "lexical_name": "minKey?_insertIfNew",
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
  "slug": "minkey-insertifnew--5ad2f9856b698d096372e160",
  "source": {
    "blob": "dcc8727f5bf93bfab026e1fdc189788e7bcb058b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4347,
    "line": 4343,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantd86487b3969efd4c057b553dfbfd70a5f33d3aa592e7ba89fcd12c498a300819.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ad2f9856b698d096372e160eccd743f96bf45fe13436c1ef9ba47d66ec2f0ca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantd86487b3969efd4c057b553dfbfd70a5f33d3aa592e7ba89fcd12c498a300819.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f70b5998-8376-b6d3-8e66-ce299a175a45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4343–4347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[grind =] theorem minKey?_insertIfNew [TransCmp cmp] {k v} :
    (t.insertIfNew k v).minKey? =
      some (t.minKey?.elim k fun k' => if cmp k k' = .lt then k else k') :=
  Impl.minKey?_insertIfNew t.wf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantd86487b3969efd4c057b553dfbfd70a5f33d3aa592e7ba89fcd12c498a300819.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantd86487b3969efd4c057b553dfbfd70a5f33d3aa592e7ba89fcd12c498a300819.lean#L4343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcc8727f5bf93bfab026e1fdc189788e7bcb058b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
