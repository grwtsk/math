# moduleBaseChange'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be66edeb569a0c7aa9101d3e29b17f0f2955e17e15ee7864e056ece55414fca6",
  "kind": "def",
  "lexical_name": "moduleBaseChange'",
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
  "slug": "modulebasechange--c4aeb4d03f72b76b5db62c71",
  "source": {
    "blob": "fa403e669911d76712fff2cbbd75e35539122a57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 92,
    "path": "GRWTSK/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4aeb4d03f72b76b5db62c71ab3d75dcfcbda74625cdfa33c9414e4563154415",
  "verification": {
    "reference": "docs/verification/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be66edeb569a0c7aa9101d3e29b17f0f2955e17e15ee7864e056ece55414fca6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def moduleBaseChange' [Algebra.IsPushout R S A B] :
    Module B (S ⊗[R] Ω[A⁄R]) :=
  Module.compHom _ (Algebra.pushoutDesc B (Algebra.lsmul R (A := S) S (S ⊗[R] Ω[A⁄R]))
    (Algebra.lsmul R (A := A) _ _) (LinearMap.ext <| smul_comm · ·)).toRingHom

attribute [local instance] moduleBaseChange'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa403e669911d76712fff2cbbd75e35539122a57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
