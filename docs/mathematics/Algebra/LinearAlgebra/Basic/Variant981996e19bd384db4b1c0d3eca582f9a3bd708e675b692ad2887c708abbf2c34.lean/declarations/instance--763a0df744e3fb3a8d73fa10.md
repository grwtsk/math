# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b87e03cecfb6914c3c4ae0601c4f8c9ca0a673f539bc61c3a1ae53e17bd448d",
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
  "slug": "instance--763a0df744e3fb3a8d73fa10",
  "source": {
    "blob": "81aa607dd5e793f8b4ab2e1a6b6753ad0a55f5f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 373,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant981996e19bd384db4b1c0d3eca582f9a3bd708e675b692ad2887c708abbf2c34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:763a0df744e3fb3a8d73fa102bee9e443f301220d7554d466f6d81c1a60b9546",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant981996e19bd384db4b1c0d3eca582f9a3bd708e675b692ad2887c708abbf2c34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b87e03cecfb6914c3c4ae0601c4f8c9ca0a673f539bc61c3a1ae53e17bd448d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {ι} [Finite ι] : ∀ {R : ι → Type*} [Π i, Semiring (R i)] [∀ i, IsNoetherianRing (R i)],
    IsNoetherianRing (Π i, R i) := by
  apply Finite.induction_empty_option _ _ _ ι
  · exact fun e h ↦ isNoetherianRing_of_ringEquiv _ (.piCongrLeft _ e)
  · infer_instance
  · exact fun ih ↦ isNoetherianRing_of_ringEquiv _ (.symm .piOptionEquivProd)

namespace Submodule

variable {R M : Type*} [Ring R] [AddCommGroup M] [Module R M]

/-- A submodule contained in an noetherian submodule is FG. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant981996e19bd384db4b1c0d3eca582f9a3bd708e675b692ad2887c708abbf2c34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant981996e19bd384db4b1c0d3eca582f9a3bd708e675b692ad2887c708abbf2c34.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81aa607dd5e793f8b4ab2e1a6b6753ad0a55f5f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
