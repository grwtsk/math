# flipAt_involutive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9699edd1-6e2a-f98b-56f2-48de1ef28da2",
  "kind": "theorem",
  "lexical_name": "flipAt_involutive",
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
  "slug": "flipat-involutive--0ee407340f7185e2924a2ef5",
  "source": {
    "blob": "c082b15d9acfaa3d822c5bdba737217a2f347d5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 91,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bitfield/Variant098b6f8586b6b464d9c31c94a9d6754e7ef7d40ecfb775a6b53c7dd6109bbffc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ee407340f7185e2924a2ef5f5f35ce878ea3bf6dad24bf14a095addbf37f87d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Bitfield/Variant098b6f8586b6b464d9c31c94a9d6754e7ef7d40ecfb775a6b53c7dd6109bbffc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9699edd1-6e2a-f98b-56f2-48de1ef28da2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem flipAt_involutive
    {width : Nat}
    (field : Bitfield width)
    (coordinate : Fin width) :
    flipAt (flipAt field coordinate) coordinate = field := by
  funext candidate
  by_cases same : candidate = coordinate
  · subst candidate
    simp [flipAt]
  · simp [flipAt, same]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bitfield/Variant098b6f8586b6b464d9c31c94a9d6754e7ef7d40ecfb775a6b53c7dd6109bbffc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bitfield/Variant098b6f8586b6b464d9c31c94a9d6754e7ef7d40ecfb775a6b53c7dd6109bbffc.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c082b15d9acfaa3d822c5bdba737217a2f347d5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
