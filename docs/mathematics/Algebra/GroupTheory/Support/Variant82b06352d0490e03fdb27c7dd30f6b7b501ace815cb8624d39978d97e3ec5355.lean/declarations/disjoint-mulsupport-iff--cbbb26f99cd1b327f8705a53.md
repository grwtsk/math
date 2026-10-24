# disjoint_mulSupport_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dab8bb22-cda2-f3f9-3ad7-c45abc049817",
  "kind": "theorem",
  "lexical_name": "disjoint_mulSupport_iff",
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
  "slug": "disjoint-mulsupport-iff--cbbb26f99cd1b327f8705a53",
  "source": {
    "blob": "314faf7e738c9bb2a712546939952b618ddd36c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 122,
    "path": "GRWTSK/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbbb26f99cd1b327f8705a5302d85e56bb006d4ff45157e4e1802c17a8fa7dec",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dab8bb22-cda2-f3f9-3ad7-c45abc049817`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_mulSupport_iff {f : α → M} {s : Set α} :
    Disjoint s (mulSupport f) ↔ EqOn f 1 s := by
  rw [disjoint_comm, mulSupport_disjoint_iff]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `314faf7e738c9bb2a712546939952b618ddd36c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
