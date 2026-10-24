# combinedDyadicDeltaSortKey

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd3a5f0b969a0a5bfa983d6cd257692ed602315f398747b6ca32daee9681bedc",
  "kind": "def",
  "lexical_name": "combinedDyadicDeltaSortKey",
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
  "slug": "combineddyadicdeltasortkey--8f7c14b0922a09c7b16a4d77",
  "source": {
    "blob": "11adb56e3dcbd93889b7cf7856b01703721cc7fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 392,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ComparatorGatedDyadicFrequencyPFF/Variant344723f9cb757b602df5a774aa2927aed752fc7974c56607103790d55934b164.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f7c14b0922a09c7b16a4d7757f24f3b31bbef6bf05c7162d97105499565e30b",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ComparatorGatedDyadicFrequencyPFF/Variant344723f9cb757b602df5a774aa2927aed752fc7974c56607103790d55934b164.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd3a5f0b969a0a5bfa983d6cd257692ed602315f398747b6ca32daee9681bedc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def combinedDyadicDeltaSortKey
    {n : Nat}
    {f : WalshFourier.Function n}
    {R : Type u}
    {P : DyadicCylinderProfile f}
    (K : DyadicFactorKeyer P)
    (D : DeltaRingSortAttachment R)
    (t : OrderedFactorTree) : List Int :=
  K.key t ++ D.factorKey t

/-- Dyadic and `δ`-sorted refinement of an existing PFF object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ComparatorGatedDyadicFrequencyPFF/Variant344723f9cb757b602df5a774aa2927aed752fc7974c56607103790d55934b164.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ComparatorGatedDyadicFrequencyPFF/Variant344723f9cb757b602df5a774aa2927aed752fc7974c56607103790d55934b164.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11adb56e3dcbd93889b7cf7856b01703721cc7fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
