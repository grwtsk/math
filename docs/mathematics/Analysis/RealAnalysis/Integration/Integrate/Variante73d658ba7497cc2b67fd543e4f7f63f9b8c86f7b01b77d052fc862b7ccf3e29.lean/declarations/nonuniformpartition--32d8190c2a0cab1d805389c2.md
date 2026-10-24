# nonUniformPartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1eb2df1123042a06058bacb9ffcf6969a87b623556a757b518a882f3266245c",
  "kind": "def",
  "lexical_name": "nonUniformPartition",
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
  "slug": "nonuniformpartition--32d8190c2a0cab1d805389c2",
  "source": {
    "blob": "e31ac66ba8caa25b8a447a90a5bb70073f093845",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 795,
    "line": 771,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante73d658ba7497cc2b67fd543e4f7f63f9b8c86f7b01b77d052fc862b7ccf3e29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32d8190c2a0cab1d805389c2128fd884ed5e662ca1b94c675b60a35bd773a867",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrate/Variante73d658ba7497cc2b67fd543e4f7f63f9b8c86f7b01b77d052fc862b7ccf3e29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1eb2df1123042a06058bacb9ffcf6969a87b623556a757b518a882f3266245c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 771–795.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nonUniformPartition (I : IntervalRat) (edgeWidth : ℚ) (edgeRatio : ℚ)
    (edgeCutoff : ℚ) (nMid : ℕ) (maxEdgeParts : ℕ := 200) : List IntervalRat :=
  let lo := I.lo
  let hi := I.hi
  let leftEnd := min (lo + edgeCutoff) hi
  let rightStart := max (hi - edgeCutoff) lo
  -- Left edge breakpoints: lo, lo+w, lo+w+wr, lo+w+wr+wr², ..., leftEnd
  let leftBps := geometricBreakpoints lo leftEnd edgeWidth edgeRatio maxEdgeParts
  -- Right edge breakpoints (mirror): hi, hi-w, ..., rightStart
  let rightBpsRev := geometricBreakpoints 0 (hi - rightStart) edgeWidth edgeRatio maxEdgeParts
  let rightBps := (rightBpsRev.map (hi - ·)).reverse
  -- Middle breakpoints: uniform from leftEnd to rightStart
  let midBps := if nMid = 0 || rightStart ≤ leftEnd then [leftEnd, rightStart].filter (· > leftEnd)
    else
      let w := (rightStart - leftEnd) / nMid
      List.ofFn (fun (i : Fin (nMid + 1)) => leftEnd + w * (i : ℚ))
  -- Merge all breakpoints, deduplicate, sort
  let allBps := (leftBps ++ midBps ++ rightBps).eraseDups
  let sorted := allBps.mergeSort (· ≤ ·)
  -- Convert consecutive breakpoints to intervals
  let pairs := sorted.zip sorted.tail
  pairs.filterMap fun (a, b) =>
    if h : a < b then some ⟨a, b, le_of_lt h⟩ else none

end LeanCert.Engine
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrate/Variante73d658ba7497cc2b67fd543e4f7f63f9b8c86f7b01b77d052fc862b7ccf3e29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante73d658ba7497cc2b67fd543e4f7f63f9b8c86f7b01b77d052fc862b7ccf3e29.lean#L771).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e31ac66ba8caa25b8a447a90a5bb70073f093845` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
