# actualPsiComplexMellinTailSeven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b3aab2f345eb2b7ff82da4abeff36ce5983e4ea528db6c277552d8e1fbf8d87",
  "kind": "def",
  "lexical_name": "actualPsiComplexMellinTailSeven",
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
  "slug": "actualpsicomplexmellintailseven--ed85650cf480f0ff3d40fe5e",
  "source": {
    "blob": "f5ed5f5855058f2ca92871ff2364cb4933228b5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 22,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variantb11d4d7e288c0cb6eaa4969f44c8e893d53f9924d037484435548b629f371825.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed85650cf480f0ff3d40fe5e396902fc55380c91cbcbfe644b64ef266b475172",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt04/Variantb11d4d7e288c0cb6eaa4969f44c8e893d53f9924d037484435548b629f371825.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b3aab2f345eb2b7ff82da4abeff36ce5983e4ea528db6c277552d8e1fbf8d87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualPsiComplexMellinTailSeven (s : ℂ) : ℂ :=
  ∫ y in Ioi (7 : ℝ), (Chebyshev.psi y : ℂ) * (y : ℂ) ^ (-(s + 1))

/-- The original shifted Chebyshev source is preserved in the Mellin tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt04/Variantb11d4d7e288c0cb6eaa4969f44c8e893d53f9924d037484435548b629f371825.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variantb11d4d7e288c0cb6eaa4969f44c8e893d53f9924d037484435548b629f371825.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5ed5f5855058f2ca92871ff2364cb4933228b5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
