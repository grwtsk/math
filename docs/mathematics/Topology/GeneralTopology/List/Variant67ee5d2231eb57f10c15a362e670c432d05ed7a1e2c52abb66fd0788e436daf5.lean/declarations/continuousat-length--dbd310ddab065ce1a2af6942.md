# continuousAt_length

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f624e6c5-0cca-f2f1-bc97-800babcffad6",
  "kind": "theorem",
  "lexical_name": "continuousAt_length",
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
  "slug": "continuousat-length--dbd310ddab065ce1a2af6942",
  "source": {
    "blob": "82b124917ec325df281973b6becb37a035cd47ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 114,
    "path": "GRWTSK/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbd310ddab065ce1a2af6942360f2103d2e2ff85c6aec25927ba7431aa8f6e68",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f624e6c5-0cca-f2f1-bc97-800babcffad6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_length : ∀ l : List α, ContinuousAt List.length l := by
  simp only [ContinuousAt, nhds_discrete]
  refine tendsto_nhds ?_ ?_
  · exact tendsto_pure_pure _ _
  · intro l a ih
    dsimp only [List.length]
    refine Tendsto.comp (tendsto_pure_pure (fun x => x + 1) _) ?_
    exact Tendsto.comp ih tendsto_snd

/-- Continuity of `insertIdx` in terms of `Tendsto`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/List/Variant67ee5d2231eb57f10c15a362e670c432d05ed7a1e2c52abb66fd0788e436daf5.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82b124917ec325df281973b6becb37a035cd47ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
