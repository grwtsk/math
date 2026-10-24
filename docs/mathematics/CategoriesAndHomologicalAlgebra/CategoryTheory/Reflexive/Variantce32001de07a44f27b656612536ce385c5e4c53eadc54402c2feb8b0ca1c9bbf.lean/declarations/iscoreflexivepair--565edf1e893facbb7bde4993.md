# IsCoreflexivePair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:918fd3ec571a7e1ef8514eaa7a50622e23c82dde6a6c2fc3cfacac0ba9391fa6",
  "kind": "class",
  "lexical_name": "IsCoreflexivePair",
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
  "slug": "iscoreflexivepair--565edf1e893facbb7bde4993",
  "source": {
    "blob": "846370f62425f2863aac3c51db7d0148567c72b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:565edf1e893facbb7bde4993150a3a88404e6342c0a90e3e78593aa2d3f16acf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:918fd3ec571a7e1ef8514eaa7a50622e23c82dde6a6c2fc3cfacac0ba9391fa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsCoreflexivePair (f g : A ⟶ B) : Prop where
  common_retraction' : ∃ s : B ⟶ A, f ≫ s = 𝟙 A ∧ g ≫ s = 𝟙 A
#align category_theory.is_coreflexive_pair CategoryTheory.IsCoreflexivePair

-- porting note: added theorem, because of unsupported infer kinds
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantce32001de07a44f27b656612536ce385c5e4c53eadc54402c2feb8b0ca1c9bbf.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `846370f62425f2863aac3c51db7d0148567c72b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
