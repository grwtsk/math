# lanczosCoefficients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef571851beaed091c1fec972cbfc77894e8a64268196b2aef5ccd19e342dfb11",
  "kind": "def",
  "lexical_name": "lanczosCoefficients",
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
  "slug": "lanczoscoefficients--5cbd67714fe80d482c19c065",
  "source": {
    "blob": "348edb5033dfe80d6fdeab9687b0737959ab7412",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 55,
    "path": "GRWTSK/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5cbd67714fe80d482c19c06599aaed1ab27f055cf217fffb46f0716dece890d4",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef571851beaed091c1fec972cbfc77894e8a64268196b2aef5ccd19e342dfb11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def lanczosCoefficients : Fin 9 → ℝ
  | ⟨0, _⟩ => 99999999999980993 / 100000000000000000
  | ⟨1, _⟩ => 6765203681218851 / 10000000000000
  | ⟨2, _⟩ => -12591392167224028 / 10000000000000
  | ⟨3, _⟩ => 77132342877765313 / 100000000000000
  | ⟨4, _⟩ => -17661502916214059 / 100000000000000
  | ⟨5, _⟩ => 12507343278686905 / 1000000000000000
  | ⟨6, _⟩ => -13857109526572012 / 100000000000000000
  | ⟨7, _⟩ => 99843695780195716 / 10000000000000000000000
  | ⟨8, _⟩ => 15056327351493116 / 100000000000000000000000

/-- The nonreflection branch of the runtime Lanczos formula, over exact reals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ExplicitLanczosAndSuppliedBounds/Variant03d73452c99c6fd3/FormulaDomainAndInequalityData.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `348edb5033dfe80d6fdeab9687b0737959ab7412` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
