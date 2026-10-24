# WalshFourier.projection_is_normalized_innerProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:818470e8-f723-2275-af4d-092894a93d8e",
  "kind": "theorem",
  "lexical_name": "WalshFourier.projection_is_normalized_innerProduct",
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
  "slug": "walshfourier-projection-is-normalized-innerproduct--ff4276e4a864a06ef35130f0",
  "source": {
    "blob": "78ff04d3add41dd025467e18c75e4cb23ef5a2ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 258,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff4276e4a864a06ef35130f03a9b1a2515c4204d341b2318ea608267b8de1872",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:818470e8-f723-2275-af4d-092894a93d8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WalshFourier.projection_is_normalized_innerProduct {n : Nat}
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    WalshFourier.projection f S =
      { numerator := WalshFourier.innerProduct f (WalshFourier.characterFunction S)
        exponent := n } := by
  rfl

/--
The zero-frequency coordinate is the normalized sum of the function values.

Since `χ_∅(x) = 1`, this is the average component of the spectrum.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78ff04d3add41dd025467e18c75e4cb23ef5a2ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
