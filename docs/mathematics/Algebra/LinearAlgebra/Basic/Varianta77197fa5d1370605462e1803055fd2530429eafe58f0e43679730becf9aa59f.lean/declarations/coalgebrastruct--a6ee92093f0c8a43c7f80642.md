# CoalgebraStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b672a95a5422f31a44d25e14c6e365995742f1a8b0047e0e0fb9f2fafe23bae",
  "kind": "class",
  "lexical_name": "CoalgebraStruct",
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
  "slug": "coalgebrastruct--a6ee92093f0c8a43c7f80642",
  "source": {
    "blob": "0957870881e4684b7be373d0d6e1863cced976f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 40,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6ee92093f0c8a43c7f8064233da1fee487864a08047a4256a8ad1f48e0193f8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b672a95a5422f31a44d25e14c6e365995742f1a8b0047e0e0fb9f2fafe23bae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class CoalgebraStruct (R : Type u) (A : Type v)
    [CommSemiring R] [AddCommMonoid A] [Module R A] where
  /-- The comultiplication of the coalgebra -/
  comul : A →ₗ[R] A ⊗[R] A
  /-- The counit of the coalgebra -/
  counit : A →ₗ[R] R

/--
A representation of an element `a` of a coalgebra `A` is a finite sum of pure tensors `∑ xᵢ ⊗ yᵢ`
that is equal to `comul a`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0957870881e4684b7be373d0d6e1863cced976f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
