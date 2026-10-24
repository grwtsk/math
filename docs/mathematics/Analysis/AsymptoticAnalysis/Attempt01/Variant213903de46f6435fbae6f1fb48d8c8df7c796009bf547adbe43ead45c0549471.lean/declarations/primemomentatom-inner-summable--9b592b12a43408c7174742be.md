# primeMomentAtom_inner_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33a8d2fe-3ac6-1df5-97d1-dc6be5547cfd",
  "kind": "theorem",
  "lexical_name": "primeMomentAtom_inner_summable",
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
  "slug": "primemomentatom-inner-summable--9b592b12a43408c7174742be",
  "source": {
    "blob": "f51c9aadc3f18289c4d2f1dbf0e76eaaac1f1461",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 123,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b592b12a43408c7174742be65283d6307c81a7e1b5ac3d1c7a009303f093d4c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33a8d2fe-3ac6-1df5-97d1-dc6be5547cfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeMomentAtom_inner_summable (r : ℕ) (p : Nat.Primes) :
    Summable (primeMomentAtom r p) :=
  ((summable_prod_of_nonneg (fun pk => momentAtom_nonneg r pk.1.val pk.2)).mp
    (primeMomentAtom_summable r)).1 p

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Attempt01/Variant213903de46f6435fbae6f1fb48d8c8df7c796009bf547adbe43ead45c0549471.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f51c9aadc3f18289c4d2f1dbf0e76eaaac1f1461` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
