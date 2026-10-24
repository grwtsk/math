# orbitGammaAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9388c73df6e4de84ee8fa7b6652c38495e37b303ade6f4b2ec028b99ed7e968f",
  "kind": "def",
  "lexical_name": "orbitGammaAction",
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
  "slug": "orbitgammaaction--aaeb7f8a3444b827a61d20c7",
  "source": {
    "blob": "026bd0249347721c8c22e695a6f202ee3fff653d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 54,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteGammaActionIntertwining.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aaeb7f8a3444b827a61d20c7b36560a9a89031642195eb8ca5eaa95b8f3fece0",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteGammaActionIntertwining.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9388c73df6e4de84ee8fa7b6652c38495e37b303ade6f4b2ec028b99ed7e968f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def orbitGammaAction
    (datum : FunctionalEquationDatum Grid)
    (vector : OrbitHilbert Grid) : OrbitHilbert Grid :=
  WithLp.toLp 2 fun index ↦
    Matrix.mulVec
      (GammaSpindleDirac datum.characterOrbit.representative
        (datum.spectralValue index.1))
      (fun spin ↦ vector (index.1, (spin, index.2.2))) index.2.1

/-- The fixed real-structure convention intertwines the finite orbit Gamma
operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteGammaActionIntertwining.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteGammaActionIntertwining.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `026bd0249347721c8c22e695a6f202ee3fff653d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
