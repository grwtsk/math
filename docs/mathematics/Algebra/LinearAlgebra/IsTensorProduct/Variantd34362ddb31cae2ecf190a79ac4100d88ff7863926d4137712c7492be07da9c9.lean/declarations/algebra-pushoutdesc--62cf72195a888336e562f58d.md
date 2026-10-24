# Algebra.pushoutDesc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d7d010153239d806b850ab1945b3eb82809c9feb2fa20549784eefcc75b123d",
  "kind": "def",
  "lexical_name": "Algebra.pushoutDesc",
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
  "slug": "algebra-pushoutdesc--62cf72195a888336e562f58d",
  "source": {
    "blob": "915342d3b63e40411174a7257f149107258f9690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 706,
    "line": 699,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantd34362ddb31cae2ecf190a79ac4100d88ff7863926d4137712c7492be07da9c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62cf72195a888336e562f58d6f64039d7359aac396723c9afc1dd4c19a57228e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsTensorProduct/Variantd34362ddb31cae2ecf190a79ac4100d88ff7863926d4137712c7492be07da9c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d7d010153239d806b850ab1945b3eb82809c9feb2fa20549784eefcc75b123d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 699–706.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Algebra.pushoutDesc [H : Algebra.IsPushout R S R' S'] {A : Type*} [Semiring A]
    [Algebra R A] (f : S →ₐ[R] A) (g : R' →ₐ[R] A) (hf : ∀ x y, f x * g y = g y * f x) :
    S' →ₐ[R] A :=
  (Algebra.TensorProduct.lift f g hf).comp
    ((Algebra.IsPushout.equiv R S R' S').symm.toAlgHom.restrictScalars R)

set_option backward.isDefEq.respectTransparency false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsTensorProduct/Variantd34362ddb31cae2ecf190a79ac4100d88ff7863926d4137712c7492be07da9c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantd34362ddb31cae2ecf190a79ac4100d88ff7863926d4137712c7492be07da9c9.lean#L699).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `915342d3b63e40411174a7257f149107258f9690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
