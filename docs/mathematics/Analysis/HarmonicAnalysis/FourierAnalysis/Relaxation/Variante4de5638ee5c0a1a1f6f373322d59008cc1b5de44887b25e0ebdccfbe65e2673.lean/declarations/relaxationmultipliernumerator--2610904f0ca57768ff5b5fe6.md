# relaxationMultiplierNumerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:850de335bde13f7a913f32ddf241508bb071cadbf2a54699fc7f036d5d9e7fb6",
  "kind": "def",
  "lexical_name": "relaxationMultiplierNumerator",
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
  "slug": "relaxationmultipliernumerator--2610904f0ca57768ff5b5fe6",
  "source": {
    "blob": "591e5e324693c813e6600379f1fd5e185c087ce9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 36,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2610904f0ca57768ff5b5fe6522c5961bb446de2ea5d36295bd5c8864950e4a3",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:850de335bde13f7a913f32ddf241508bb071cadbf2a54699fc7f036d5d9e7fb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def relaxationMultiplierNumerator {n : Nat}
    (epsilon : RelaxationParameter)
    (S : WalshFourier.Frequency n) : Int :=
  (epsilon.denominator : Int) -
    (epsilon.numerator : Int) * (WalshFourier.laplacianEigenvalue S : Int)

/-- Spectral multiplier of `R_epsilon = I - epsilon * L_n` at frequency `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `591e5e324693c813e6600379f1fd5e185c087ce9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
