# enoughInjectives_of_enoughProjectives_op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59dab22a-d4ce-c643-03b9-051142ccf55e",
  "kind": "theorem",
  "lexical_name": "enoughInjectives_of_enoughProjectives_op",
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
  "slug": "enoughinjectives-of-enoughprojectives-op--a2acea911c6750c253a9d1e8",
  "source": {
    "blob": "5241c9dbb65ae2a76e9cfbf45a576e113720ff82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 282,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant680dda3b7f46bc0aec7a17cdb127e89af525038b6726780e58bf1e4b7ae71085.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2acea911c6750c253a9d1e8b3e11bf963d8cefc3d61a0833a255dbb831a8520",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant680dda3b7f46bc0aec7a17cdb127e89af525038b6726780e58bf1e4b7ae71085.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59dab22a-d4ce-c643-03b9-051142ccf55e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem enoughInjectives_of_enoughProjectives_op [EnoughProjectives Cᵒᵖ] : EnoughInjectives C :=
  ⟨fun X => ⟨⟨_, inferInstance, (Projective.π (op X)).unop, inferInstance⟩⟩⟩
#align category_theory.injective.enough_injectives_of_enough_projectives_op CategoryTheory.Injective.enoughInjectives_of_enoughProjectives_op

open Injective

section

variable [HasZeroMorphisms C] [HasImages Cᵒᵖ] [HasEqualizers Cᵒᵖ]

/-- Given a pair of exact morphism `f : Q ⟶ R` and `g : R ⟶ S` and a map `h : R ⟶ J` to an injective
object `J` such that `f ≫ h = 0`, then `g` descents to a map `S ⟶ J`. See below:

```
Q --- f --> R --- g --> S
            |
            | h
            v
            J
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant680dda3b7f46bc0aec7a17cdb127e89af525038b6726780e58bf1e4b7ae71085.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant680dda3b7f46bc0aec7a17cdb127e89af525038b6726780e58bf1e4b7ae71085.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5241c9dbb65ae2a76e9cfbf45a576e113720ff82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
