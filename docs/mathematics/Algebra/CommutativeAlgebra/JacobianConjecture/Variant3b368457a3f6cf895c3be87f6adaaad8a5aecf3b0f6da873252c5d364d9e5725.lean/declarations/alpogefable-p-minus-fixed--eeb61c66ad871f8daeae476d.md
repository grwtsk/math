# alpogeFable_p_minus_fixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f73c9e09-92a1-d490-4750-7451a7f034e3",
  "kind": "theorem",
  "lexical_name": "alpogeFable_p_minus_fixed",
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
  "slug": "alpogefable-p-minus-fixed--eeb61c66ad871f8daeae476d",
  "source": {
    "blob": "ea5e7876292a5634b9075e577c865b9e24fcbbfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 52,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/JacobianConjecture/Variant3b368457a3f6cf895c3be87f6adaaad8a5aecf3b0f6da873252c5d364d9e5725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eeb61c66ad871f8daeae476d312c9d9a2aa42171c16c551c5e5552b071083f85",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/JacobianConjecture/Variant3b368457a3f6cf895c3be87f6adaaad8a5aecf3b0f6da873252c5d364d9e5725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f73c9e09-92a1-d490-4750-7451a7f034e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem alpogeFable_p_minus_fixed : Function.IsFixedPt alpogeFableTransform pMinus :=
  (alpogeFable_transform_fixed_iff pMinus).mpr alpogeFable_p_minus

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/JacobianConjecture/Variant3b368457a3f6cf895c3be87f6adaaad8a5aecf3b0f6da873252c5d364d9e5725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/JacobianConjecture/Variant3b368457a3f6cf895c3be87f6adaaad8a5aecf3b0f6da873252c5d364d9e5725.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea5e7876292a5634b9075e577c865b9e24fcbbfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
