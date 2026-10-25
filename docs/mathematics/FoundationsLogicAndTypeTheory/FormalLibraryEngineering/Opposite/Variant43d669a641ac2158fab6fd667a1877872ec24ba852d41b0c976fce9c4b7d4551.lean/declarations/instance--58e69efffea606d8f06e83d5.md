# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d51c6758d3458ea698e206eed21d7aba7cb3db8e5864f453ea9ea07020463e89",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--58e69efffea606d8f06e83d5",
  "source": {
    "blob": "22d1d3e866ffb3d514b69ca65ddd502e916650cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 377,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58e69efffea606d8f06e83d5b7fda013e2568af7b3a832f5df315c016bb29110",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d51c6758d3458ea698e206eed21d7aba7cb3db8e5864f453ea9ea07020463e89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
scoped instance (priority := low) instLawfulOrderLeftLeaningMaxOpposite {il : LE α} {im : Max α}
    [LawfulOrderLeftLeaningMax α] :
    haveI := il.opposite
    haveI := im.oppositeMin
    LawfulOrderLeftLeaningMin α :=
  letI := il.opposite
  letI := im.oppositeMin
  { min_eq_left a b hab := by
      simp only [Min.min]
      letI := il; letI := im
      exact LawfulOrderLeftLeaningMax.max_eq_left a b hab
    min_eq_right a b hab := by
      simp only [Min.min]
      letI := il; letI := im
      exact LawfulOrderLeftLeaningMax.max_eq_right a b hab }

end OppositeOrderInstances

-- When imported from a non-module, these instances are exposed, and reducing them during
-- type class resolution is too inefficient.
attribute [irreducible] LE.opposite LT.opposite Min.oppositeMax Max.oppositeMin

section DocsToVerso

set_option linter.unusedVariables false -- Otherwise, we get warnings about Verso code blocks.
docs_to_verso LE.opposite
docs_to_verso LT.opposite
docs_to_verso Min.oppositeMax
docs_to_verso Max.oppositeMin

end DocsToVerso
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22d1d3e866ffb3d514b69ca65ddd502e916650cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
