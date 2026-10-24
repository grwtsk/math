# HasseWeilAnalyticObjectKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aebe938d537d469cd5999de7dff48d6b84a5e991a4d3b0a471efd0993698a96f",
  "kind": "inductive",
  "lexical_name": "HasseWeilAnalyticObjectKind",
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
  "slug": "hasseweilanalyticobjectkind--8acd70f740bdd42ebd23b7b8",
  "source": {
    "blob": "8019f6161736cbaa58e37f9667fe91c6ac2e91b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2085,
    "line": 2073,
    "path": "GRWTSK/Analysis/ComplexAnalysis/LFunction/Variant7501d45e9ee199c5720c86ea42b9f5d43ce928015dd17d71de32aadf6499a694.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8acd70f740bdd42ebd23b7b8332b9fb7633731c026ea4cd9b04bb68e5ac53136",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/LFunction/Variant7501d45e9ee199c5720c86ea42b9f5d43ce928015dd17d71de32aadf6499a694.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aebe938d537d469cd5999de7dff48d6b84a5e991a4d3b0a471efd0993698a96f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2073–2085.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive HasseWeilAnalyticObjectKind where
  | uncompletedAndCompletedPair
  | suppliedByCertificate
deriving Repr, DecidableEq

/--
Typed analytic-object data for a Hasse-Weil L-function interface.

This is deliberately not a complex-analysis construction. It provides a carrier
for the uncompleted function, completed function, Euler-product germ, coefficient
series germ, and analytic continuation so later theorem inputs can assert that
they are the same analytic object.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/LFunction/Variant7501d45e9ee199c5720c86ea42b9f5d43ce928015dd17d71de32aadf6499a694.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/LFunction/Variant7501d45e9ee199c5720c86ea42b9f5d43ce928015dd17d71de32aadf6499a694.lean#L2073).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8019f6161736cbaa58e37f9667fe91c6ac2e91b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
