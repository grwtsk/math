# IntervalLDLCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eaee4b6c8a2b2de35cf1651021f570c872a5c8ce9865cc06530218191d37e259",
  "kind": "structure",
  "lexical_name": "IntervalLDLCertificate",
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
  "slug": "intervalldlcertificate--b458f16385d677b6f0b9ff54",
  "source": {
    "blob": "0bf316b62cf1da82ffd179be8ca9fedf2451eb66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalTail/Variantca86962268e1f15bf2a83cd10219af66c52d912d04feb1538d0852f629db132a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b458f16385d677b6f0b9ff549ddb733817d5d60aeef8526f3ddf663c9fba3831",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalTail/Variantca86962268e1f15bf2a83cd10219af66c52d912d04feb1538d0852f629db132a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eaee4b6c8a2b2de35cf1651021f570c872a5c8ce9865cc06530218191d37e259`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IntervalLDLCertificate
    (rank : Nat)
    (interval : QInterval) where
  evaluatedDefect : ℚ → RationalMatrix rank
  truncationOrder : Nat
  lower : ℚ → RationalMatrix rank
  diagonal : ℚ → Fin rank → ℚ
  pivots_nonnegative :
    ∀ q,
      interval.lower ≤ q →
      q ≤ interval.upper →
      ∀ index,
        0 ≤ diagonal q index
  tailQuadratic :
    ℚ → (Fin rank → ℚ) → ℚ
  tail_nonnegative :
    ∀ q,
      interval.lower ≤ q →
      q ≤ interval.upper →
      ∀ vector,
        0 ≤ tailQuadratic q vector
  exactDecomposition : Prop
  exactDecompositionProof :
    exactDecomposition
  evaluated_nonnegative :
    ∀ q,
      interval.lower ≤ q →
      q ≤ interval.upper →
      ∀ vector,
        0 ≤ rationalQuadraticForm
          (evaluatedDefect q) vector

end Mathematics.SemiLocalDefect.QSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalTail/Variantca86962268e1f15bf2a83cd10219af66c52d912d04feb1538d0852f629db132a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalTail/Variantca86962268e1f15bf2a83cd10219af66c52d912d04feb1538d0852f629db132a.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bf316b62cf1da82ffd179be8ca9fedf2451eb66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
