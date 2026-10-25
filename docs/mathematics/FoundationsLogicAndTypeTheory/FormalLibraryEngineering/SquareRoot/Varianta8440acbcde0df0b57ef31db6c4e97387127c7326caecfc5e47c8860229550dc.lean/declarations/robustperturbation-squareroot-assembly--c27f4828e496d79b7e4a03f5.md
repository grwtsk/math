# robustPerturbation_squareRoot_assembly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "052a51a5d44e9be857a0828873ecb630bf4d718c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a8440acbcde0df0b57ef31db6c4e97387127c7326caecfc5e47c8860229550dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31b1d747-286e-5083-5dfe-8c34070903e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:439d7c8d-d9c8-e20c-5350-9a1603d6441b",
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
  "slug": "robustperturbation-squareroot-assembly--c27f4828e496d79b7e4a03f5",
  "source": {
    "blob": "052a51a5d44e9be857a0828873ecb630bf4d718c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SquareRoot/Varianta8440acbcde0df0b57ef31db6c4e97387127c7326caecfc5e47c8860229550dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c27f4828e496d79b7e4a03f5e107ae00debfb8b2902cb56c0cd9c5788d6ac18f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SquareRoot/Varianta8440acbcde0df0b57ef31db6c4e97387127c7326caecfc5e47c8860229550dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:439d7c8d-d9c8-e20c-5350-9a1603d6441b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–111.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SquareRoot/Varianta8440acbcde0df0b57ef31db6c4e97387127c7326caecfc5e47c8860229550dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SquareRoot/Varianta8440acbcde0df0b57ef31db6c4e97387127c7326caecfc5e47c8860229550dc.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `052a51a5d44e9be857a0828873ecb630bf4d718c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
