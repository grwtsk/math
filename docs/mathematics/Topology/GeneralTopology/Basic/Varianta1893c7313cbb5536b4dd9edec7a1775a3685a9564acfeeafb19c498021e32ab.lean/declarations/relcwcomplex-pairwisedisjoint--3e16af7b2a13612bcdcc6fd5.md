# RelCWComplex.pairwiseDisjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a1e3e0d-2971-b206-c102-cd8503684696",
  "kind": "lemma",
  "lexical_name": "RelCWComplex.pairwiseDisjoint",
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
  "slug": "relcwcomplex-pairwisedisjoint--3e16af7b2a13612bcdcc6fd5",
  "source": {
    "blob": "2cc6b3374c97b03c6a56d2c64b8139c81eb7cfbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 224,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e16af7b2a13612bcdcc6fd561d5f0b48700dddd7c0e4bb605538d270dccd482",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a1e3e0d-2971-b206-c102-cd8503684696`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RelCWComplex.pairwiseDisjoint [RelCWComplex C D] :
    (univ : Set (Σ n, cell C n)).PairwiseDisjoint (fun ni ↦ openCell ni.1 ni.2) :=
  RelCWComplex.pairwiseDisjoint'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cc6b3374c97b03c6a56d2c64b8139c81eb7cfbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
