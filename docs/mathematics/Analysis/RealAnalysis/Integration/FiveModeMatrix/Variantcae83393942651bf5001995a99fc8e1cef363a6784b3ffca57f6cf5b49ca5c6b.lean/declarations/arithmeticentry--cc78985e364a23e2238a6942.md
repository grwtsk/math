# arithmeticEntry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:305555a0be5b6e0bd8a2c4f3d98fed0b874c3b9eb413a16352ac705542f6e13d",
  "kind": "def",
  "lexical_name": "arithmeticEntry",
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
  "slug": "arithmeticentry--cc78985e364a23e2238a6942",
  "source": {
    "blob": "204bf67813058a0da0860595ebf8705d5833f72e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 127,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeMatrix/Variantcae83393942651bf5001995a99fc8e1cef363a6784b3ffca57f6cf5b49ca5c6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc78985e364a23e2238a69426ebefdc2145b8b358925dfa2c6bb671306403810",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeMatrix/Variantcae83393942651bf5001995a99fc8e1cef363a6784b3ffca57f6cf5b49ca5c6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:305555a0be5b6e0bd8a2c4f3d98fed0b874c3b9eb413a16352ac705542f6e13d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def arithmeticEntry (A : ℝ) (i j : Fin 5) : ℝ :=
  -2 * ∑ n ∈ Finset.Icc 2 ⌊Real.exp (2*A)⌋₊,
    ArithmeticFunction.vonMangoldt n / Real.sqrt n * modeCorrelation A i j (Real.log n)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeMatrix/Variantcae83393942651bf5001995a99fc8e1cef363a6784b3ffca57f6cf5b49ca5c6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeMatrix/Variantcae83393942651bf5001995a99fc8e1cef363a6784b3ffca57f6cf5b49ca5c6b.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `204bf67813058a0da0860595ebf8705d5833f72e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
