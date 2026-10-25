# roundWithAccuracy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53f29b3d012665da99fed4619cef67316672f13573271cf08798af23cde081f7",
  "kind": "def",
  "lexical_name": "roundWithAccuracy",
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
  "slug": "roundwithaccuracy--4bb4a367e23b46fc8294be01",
  "source": {
    "blob": "5c27140e69aaff44afe25ff197ece264ef6e2319",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variantf4652202683db8a4c01fe7b18401ce9b07178052b66a4a43ba0037ab1cf838e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4bb4a367e23b46fc8294be01d20802e696a6610fbaf7f1b361f66a02f29306c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variantf4652202683db8a4c01fe7b18401ce9b07178052b66a4a43ba0037ab1cf838e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53f29b3d012665da99fed4619cef67316672f13573271cf08798af23cde081f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def roundWithAccuracy (spec : Format) (sign : Sign) (mantissa : Nat) (exponent : Int) (accuracy : Accuracy) : UnpackedFloat :=
  -- First shift: this performs the bulk of the shifting
  let (em₁, e₁) := shiftToTargetExponent spec mantissa exponent accuracy
  -- Round mantissa
  let roundedEm₁ := em₁.roundedMantissa
  -- Rounding the mantissa may have overflowed it, causing it to take too many bits, so we shift
  -- once more (no rounding is necessary after this):
  let (finalExtendedMantissa, finalExponent) := shiftToTargetExponent spec roundedEm₁ e₁ .exact
  let finalMantissa := finalExtendedMantissa.mantissa

  if h : finalMantissa = 0 then
    .zero sign
  else
    .finite sign finalMantissa finalExponent (Nat.pos_of_ne_zero h)

/--
If the target exponent is smaller than the given exponent, decreases the exponent of the mantissa to
the target exponent; otherwise does nothing.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variantf4652202683db8a4c01fe7b18401ce9b07178052b66a4a43ba0037ab1cf838e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variantf4652202683db8a4c01fe7b18401ce9b07178052b66a4a43ba0037ab1cf838e8.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c27140e69aaff44afe25ff197ece264ef6e2319` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
