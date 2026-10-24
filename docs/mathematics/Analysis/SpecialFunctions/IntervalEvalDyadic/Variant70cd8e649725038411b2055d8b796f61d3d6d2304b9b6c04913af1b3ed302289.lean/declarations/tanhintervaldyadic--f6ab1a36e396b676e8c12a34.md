# tanhIntervalDyadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02a8f2333b9308a5991f1204de0e119c893ac53e80659c74c9d48c2bd3183645",
  "kind": "def",
  "lexical_name": "tanhIntervalDyadic",
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
  "slug": "tanhintervaldyadic--f6ab1a36e396b676e8c12a34",
  "source": {
    "blob": "416f03a2e1f7ed79cc306cd97a6cc17f15baf6aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 135,
    "path": "GRWTSK/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6ab1a36e396b676e8c12a347f1d66f934a0a8b71c86c9e3b47423c5dcc36e45",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02a8f2333b9308a5991f1204de0e119c893ac53e80659c74c9d48c2bd3183645`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tanhIntervalDyadic (_I : IntervalDyadic) (_cfg : DyadicConfig) : IntervalDyadic :=
  let neg1 := Core.Dyadic.ofInt (-1)
  let pos1 := Core.Dyadic.ofInt 1
  ⟨neg1, pos1, by rw [Dyadic.toRat_ofInt, Dyadic.toRat_ofInt]; norm_num⟩

/-- arsinh interval: wide box bound via rational arsinhInterval -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `416f03a2e1f7ed79cc306cd97a6cc17f15baf6aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
