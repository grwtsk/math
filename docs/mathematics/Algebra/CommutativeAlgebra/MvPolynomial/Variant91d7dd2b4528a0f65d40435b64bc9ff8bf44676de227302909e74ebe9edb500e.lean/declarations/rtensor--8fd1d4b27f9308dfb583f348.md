# rTensor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb716073cba99a9a81beaa3096c7bba2525ce988bd9966564f4e140eb99e0495",
  "kind": "def",
  "lexical_name": "rTensor",
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
  "slug": "rtensor--8fd1d4b27f9308dfb583f348",
  "source": {
    "blob": "9194f3a7bf1caeb70022dc09a26c65cd7250cd1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 73,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fd1d4b27f9308dfb583f34834fd10cf96b52d58a46eaadda2036a0c3d1e0c8b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb716073cba99a9a81beaa3096c7bba2525ce988bd9966564f4e140eb99e0495`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def rTensor :
    MvPolynomial σ S ⊗[R] N ≃ₗ[S] (σ →₀ ℕ) →₀ (S ⊗[R] N) :=
  TensorProduct.finsuppLeft' _ _ _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9194f3a7bf1caeb70022dc09a26c65cd7250cd1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
