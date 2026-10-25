# alg03_polarizedCompleteness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c554c0db-54ce-f739-9669-33092bfc75a5",
  "kind": "theorem",
  "lexical_name": "alg03_polarizedCompleteness",
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
  "slug": "alg03-polarizedcompleteness--d499a5268beb195d9ea7a129",
  "source": {
    "blob": "d9617352b4643dcfec95398db17d6ce07c69fcbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ALG03PolarizedCompleteness/Variant63c5b448870f71e69dd7d0664ce5128ffa7809990da23ae91aa6b802675e5aca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d499a5268beb195d9ea7a1299a578897ac92628c537c2b2fd56a04b4bfc1d505",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ALG03PolarizedCompleteness/Variant63c5b448870f71e69dd7d0664ce5128ffa7809990da23ae91aa6b802675e5aca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c554c0db-54ce-f739-9669-33092bfc75a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem alg03_polarizedCompleteness
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.polarizedProfile) :
    EquivalenceWitness S.functors.PolAn := by
  have hEffectivity :=
    (alg01_polarizedEffectivity S registry) hProfile
  have hGAGA :=
    (alg02_properGAGA S registry) hProfile
  exact {
    full := hGAGA.full
    faithful := hGAGA.faithful
    essentiallySurjective := hEffectivity.essentiallySurjective
  }

end FCRS.Algebraization.Theorems
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ALG03PolarizedCompleteness/Variant63c5b448870f71e69dd7d0664ce5128ffa7809990da23ae91aa6b802675e5aca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ALG03PolarizedCompleteness/Variant63c5b448870f71e69dd7d0664ce5128ffa7809990da23ae91aa6b802675e5aca.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9617352b4643dcfec95398db17d6ce07c69fcbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
