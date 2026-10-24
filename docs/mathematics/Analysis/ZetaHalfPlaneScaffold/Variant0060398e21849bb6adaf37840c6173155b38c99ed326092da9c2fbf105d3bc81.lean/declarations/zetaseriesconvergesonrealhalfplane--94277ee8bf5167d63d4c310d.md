# ZetaSeriesConvergesOnRealHalfPlane

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72197f97b37900c31ede22dbfd422fab66d2d2942204dbd4d6559e33dc0713f5",
  "kind": "def",
  "lexical_name": "ZetaSeriesConvergesOnRealHalfPlane",
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
  "slug": "zetaseriesconvergesonrealhalfplane--94277ee8bf5167d63d4c310d",
  "source": {
    "blob": "e49821d8530cce2c31fb5f4caf754674b9e34d5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 17,
    "path": "GRWTSK/Analysis/ZetaHalfPlaneScaffold/Variant0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94277ee8bf5167d63d4c310d3ff95b905478dd824ad6a0280acfbd380ecc46c5",
  "verification": {
    "reference": "docs/verification/Analysis/ZetaHalfPlaneScaffold/Variant0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72197f97b37900c31ede22dbfd422fab66d2d2942204dbd4d6559e33dc0713f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ZetaSeriesConvergesOnRealHalfPlane : Prop :=
  ∀ σ : ℝ, 1 < σ →
    Summable fun n : Nat =>
      if n = 0 then 0 else (n : ℝ) ^ (-σ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ZetaHalfPlaneScaffold/Variant0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ZetaHalfPlaneScaffold/Variant0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e49821d8530cce2c31fb5f4caf754674b9e34d5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
