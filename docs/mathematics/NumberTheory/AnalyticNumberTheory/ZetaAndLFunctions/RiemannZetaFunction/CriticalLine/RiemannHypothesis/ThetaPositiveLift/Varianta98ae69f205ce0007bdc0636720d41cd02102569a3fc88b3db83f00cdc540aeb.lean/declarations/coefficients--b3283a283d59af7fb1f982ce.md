# coefficients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a6815fb7f8630ece7f6fdbea784aedd1257403e89f98e54932ffe25f29208f6",
  "kind": "def",
  "lexical_name": "coefficients",
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
  "slug": "coefficients--b3283a283d59af7fb1f982ce",
  "source": {
    "blob": "5c0be4f7c53f508292733c2af7ddf883f284e3f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 104,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta98ae69f205ce0007bdc0636720d41cd02102569a3fc88b3db83f00cdc540aeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3283a283d59af7fb1f982ce86dfc86b02a4d50aa478eacc6f633f4ac011a7b6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta98ae69f205ce0007bdc0636720d41cd02102569a3fc88b3db83f00cdc540aeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a6815fb7f8630ece7f6fdbea784aedd1257403e89f98e54932ffe25f29208f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coefficients : ℕ → List ℚ
  | 0 => [-3, 2]
  | 1 => [-15, 30, -8]
  | 2 => [-75, 330, -224, 32]
  | 3 => [-375, 3270, -4232, 1440, -128]
  | 4 => [-1875, 30930, -68096, 41408, -8448, 512]
  | 5 => [-9375, 285870, -1008968, 976320, -343040, 46592, -2048]
  | 6 => [-46875, 2610330, -14260064, 20633312, -11109120, 2536960, -245760, 8192]
  | 7 => [-234375, 23680470, -195822152, 407806560,
    -315824768, 107860480, -17274880, 1253376, -32768]
  | 8 => [-1171875, 214061730, -2640409856, 7716000128,
    -8263546368, 3959811072, -932413440, 110460928, -6225920, 131072]
  | _ => []

/-- The finite interval evaluator uses exactly the source polynomials. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta98ae69f205ce0007bdc0636720d41cd02102569a3fc88b3db83f00cdc540aeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta98ae69f205ce0007bdc0636720d41cd02102569a3fc88b3db83f00cdc540aeb.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c0be4f7c53f508292733c2af7ddf883f284e3f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
