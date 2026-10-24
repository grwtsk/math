# mertensTwoPointPrefix_one_two_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8702425d-1503-e894-1d91-768d01dd3bd4",
  "kind": "theorem",
  "lexical_name": "mertensTwoPointPrefix_one_two_eq_zero",
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
  "slug": "mertenstwopointprefix-one-two-eq-zero--bc93d052089fcd082c4445ac",
  "source": {
    "blob": "ef6b6b12fa1676b5d4f7478f265db5d8f5302b30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 79,
    "path": "GRWTSK/NumberTheory/Moebius/TerminalMertensTwoPointPrefixObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc93d052089fcd082c4445ac883a330b7e87452d3f4e118756f50772c5937c4c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/TerminalMertensTwoPointPrefixObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8702425d-1503-e894-1d91-768d01dd3bd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensTwoPointPrefix_one_two_eq_zero :
    mertensTwoPointPrefix 1 2 = 0 := by
  calc
    mertensTwoPointPrefix 1 2 =
        mertensTwoPointPrefix 1 1 +
          moebiusReal 2 * moebiusReal 3 := by
      simpa using (mertensTwoPointPrefix_succ 1 1)
    _ = 0 := by
      rw [mertensTwoPointPrefix_one_one_eq_neg_one]
      norm_num

/-- The first nonzero prefix supplies a unit lower bound for the canonical
maximum at scale one and shift one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/TerminalMertensTwoPointPrefixObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/TerminalMertensTwoPointPrefixObstruction.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef6b6b12fa1676b5d4f7478f265db5d8f5302b30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
