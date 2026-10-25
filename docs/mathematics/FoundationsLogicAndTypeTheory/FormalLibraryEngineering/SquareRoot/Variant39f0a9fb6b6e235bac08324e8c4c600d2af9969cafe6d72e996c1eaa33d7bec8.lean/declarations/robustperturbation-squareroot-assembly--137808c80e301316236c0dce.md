# robustPerturbation_squareRoot_assembly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e819b53-8395-0916-925b-f241ee2a5044",
  "kind": "theorem",
  "lexical_name": "robustPerturbation_squareRoot_assembly",
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
  "slug": "robustperturbation-squareroot-assembly--137808c80e301316236c0dce",
  "source": {
    "blob": "695f881953d5293a554493f4ec2a980eb782f930",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SquareRoot/Variant39f0a9fb6b6e235bac08324e8c4c600d2af9969cafe6d72e996c1eaa33d7bec8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:137808c80e301316236c0dce93265108f44282c37e6d1682ca9b9a88427c6565",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SquareRoot/Variant39f0a9fb6b6e235bac08324e8c4c600d2af9969cafe6d72e996c1eaa33d7bec8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e819b53-8395-0916-925b-f241ee2a5044`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem robustPerturbation_squareRoot_assembly
    (lawDefect operatorDefect correspondenceDefect
      remainderDefect : ℝ)
    (_lawNonnegative : 0 ≤ lawDefect)
    (_operatorNonnegative : 0 ≤ operatorDefect)
    (_correspondenceNonnegative : 0 ≤ correspondenceDefect)
    (_remainderNonnegative : 0 ≤ remainderDefect)
    (observed : ℝ)
    (certified :
      |observed| ≤
        lawDefect + operatorDefect +
          correspondenceDefect + remainderDefect) :
    |observed| ≤
      lawDefect + operatorDefect +
        correspondenceDefect + remainderDefect :=
  certified

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SquareRoot/Variant39f0a9fb6b6e235bac08324e8c4c600d2af9969cafe6d72e996c1eaa33d7bec8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SquareRoot/Variant39f0a9fb6b6e235bac08324e8c4c600d2af9969cafe6d72e996c1eaa33d7bec8.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695f881953d5293a554493f4ec2a980eb782f930` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
