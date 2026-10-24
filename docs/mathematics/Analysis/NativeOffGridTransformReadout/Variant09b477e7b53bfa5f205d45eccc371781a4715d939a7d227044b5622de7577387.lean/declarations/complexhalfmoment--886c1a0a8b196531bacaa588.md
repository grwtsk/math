# complexHalfMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46e007cc1abb0dfddf3639293b805c3a11a9e461aefd159e022ad4153efaa239",
  "kind": "def",
  "lexical_name": "complexHalfMoment",
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
  "slug": "complexhalfmoment--886c1a0a8b196531bacaa588",
  "source": {
    "blob": "af8178ff43acb435ac597cc1191097b7c8d6cd86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 34,
    "path": "GRWTSK/Analysis/NativeOffGridTransformReadout/Variant09b477e7b53bfa5f205d45eccc371781a4715d939a7d227044b5622de7577387.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:886c1a0a8b196531bacaa5881a4646284710f44d655207e82de923146d8b0a68",
  "verification": {
    "reference": "docs/verification/Analysis/NativeOffGridTransformReadout/Variant09b477e7b53bfa5f205d45eccc371781a4715d939a7d227044b5622de7577387.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46e007cc1abb0dfddf3639293b805c3a11a9e461aefd159e022ad4153efaa239`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def complexHalfMoment (A : ℝ) (z : ℂ) : ℂ :=
  ∫ t in (0 : ℝ)..2 * A, Complex.exp (z * (t : ℂ)) * (C A t : ℂ)
/-- The logarithmic model readout in this module, with the following exact parameterization.

def logarithmicModelReadout (A : ℝ) : ℝ := (complexHalfMoment A (1 / 2)).re + (phase *
exponent * complexHalfMoment A mode).re
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/NativeOffGridTransformReadout/Variant09b477e7b53bfa5f205d45eccc371781a4715d939a7d227044b5622de7577387.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/NativeOffGridTransformReadout/Variant09b477e7b53bfa5f205d45eccc371781a4715d939a7d227044b5622de7577387.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af8178ff43acb435ac597cc1191097b7c8d6cd86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
