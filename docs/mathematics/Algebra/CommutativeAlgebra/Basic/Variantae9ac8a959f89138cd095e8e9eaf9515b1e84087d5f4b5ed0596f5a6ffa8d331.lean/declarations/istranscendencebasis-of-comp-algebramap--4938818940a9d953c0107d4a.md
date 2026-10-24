# IsTranscendenceBasis.of_comp_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d7b2d9d-c02e-b947-4a27-936eda49fbcc",
  "kind": "lemma",
  "lexical_name": "IsTranscendenceBasis.of_comp_algebraMap",
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
  "slug": "istranscendencebasis-of-comp-algebramap--4938818940a9d953c0107d4a",
  "source": {
    "blob": "499610202a9a5927f3d48ca6d40eac33c87b86d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 313,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantae9ac8a959f89138cd095e8e9eaf9515b1e84087d5f4b5ed0596f5a6ffa8d331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4938818940a9d953c0107d4a30d114003c4916b3405b2f58dbf7cf8959440f6b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantae9ac8a959f89138cd095e8e9eaf9515b1e84087d5f4b5ed0596f5a6ffa8d331.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d7b2d9d-c02e-b947-4a27-936eda49fbcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsTranscendenceBasis.of_comp_algebraMap [Algebra A A'] [IsScalarTower R A A']
    [FaithfulSMul A A'] {x : ι → A} (H : IsTranscendenceBasis R (algebraMap A A' ∘ x)) :
    IsTranscendenceBasis R x :=
  .of_comp (IsScalarTower.toAlgHom R A A') (FaithfulSMul.algebraMap_injective A A') H

/-- Also see `IsTranscendenceBasis.algebraMap_comp`
for the composition with an algebraic extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantae9ac8a959f89138cd095e8e9eaf9515b1e84087d5f4b5ed0596f5a6ffa8d331.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantae9ac8a959f89138cd095e8e9eaf9515b1e84087d5f4b5ed0596f5a6ffa8d331.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `499610202a9a5927f3d48ca6d40eac33c87b86d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
