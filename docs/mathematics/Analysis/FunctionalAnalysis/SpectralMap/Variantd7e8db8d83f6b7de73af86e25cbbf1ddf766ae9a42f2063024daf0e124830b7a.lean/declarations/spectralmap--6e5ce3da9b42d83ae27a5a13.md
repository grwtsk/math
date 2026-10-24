# spectralMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56528ac54b99d87c3ef34500328535253c402ce2972a91695d6fd66a1aa870fd",
  "kind": "def",
  "lexical_name": "spectralMap",
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
  "slug": "spectralmap--6e5ce3da9b42d83ae27a5a13",
  "source": {
    "blob": "c6ba2e62f1475b4355cdc66f9d6b360c26568613",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 28,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralMap/Variantd7e8db8d83f6b7de73af86e25cbbf1ddf766ae9a42f2063024daf0e124830b7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e5ce3da9b42d83ae27a5a13965e5fd94504269098f0aeadce774946c6d822a7",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SpectralMap/Variantd7e8db8d83f6b7de73af86e25cbbf1ddf766ae9a42f2063024daf0e124830b7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56528ac54b99d87c3ef34500328535253c402ce2972a91695d6fd66a1aa870fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def spectralMap (ρ : ℂ) : ℂ :=
  (ρ - 1 / 2) / I

/--
Inverse spectral map: recovers ρ from a spectral value μ.
\[
ρ := ½ + iμ
\]
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SpectralMap/Variantd7e8db8d83f6b7de73af86e25cbbf1ddf766ae9a42f2063024daf0e124830b7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SpectralMap/Variantd7e8db8d83f6b7de73af86e25cbbf1ddf766ae9a42f2063024daf0e124830b7a.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6ba2e62f1475b4355cdc66f9d6b360c26568613` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
