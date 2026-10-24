# Module.Finite.matrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6c2630e4835d78a6e561df89be99e7b9b3e7627d0ac189fd3f3b04d7f94612d",
  "kind": "instance",
  "lexical_name": "Module.Finite.matrix",
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
  "slug": "module-finite-matrix--40dae190a8ed683b28dc4a11",
  "source": {
    "blob": "2ce7a05f1760cc52cbf054bfa317fe76753d4c5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 42,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantb26da8fe59af751f6d3a70849f7d60746b46ad8e90c7a57c310497ecfa1502c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40dae190a8ed683b28dc4a113d133cf9f4b237d2f44b873a235abf58f178e6d8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantb26da8fe59af751f6d3a70849f7d60746b46ad8e90c7a57c310497ecfa1502c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6c2630e4835d78a6e561df89be99e7b9b3e7627d0ac189fd3f3b04d7f94612d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Module.Finite.matrix {R ι₁ ι₂ M : Type*}
    [Semiring R] [AddCommMonoid M] [Module R M] [Module.Free R M] [Module.Finite R M]
    [_root_.Finite ι₁] [_root_.Finite ι₂] :
    Module.Finite R (Matrix ι₁ ι₂ M) := by
  cases nonempty_fintype ι₁
  cases nonempty_fintype ι₂
  exact Module.Finite.of_basis <| (Free.chooseBasis _ _).matrix _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantb26da8fe59af751f6d3a70849f7d60746b46ad8e90c7a57c310497ecfa1502c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantb26da8fe59af751f6d3a70849f7d60746b46ad8e90c7a57c310497ecfa1502c4.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ce7a05f1760cc52cbf054bfa317fe76753d4c5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
