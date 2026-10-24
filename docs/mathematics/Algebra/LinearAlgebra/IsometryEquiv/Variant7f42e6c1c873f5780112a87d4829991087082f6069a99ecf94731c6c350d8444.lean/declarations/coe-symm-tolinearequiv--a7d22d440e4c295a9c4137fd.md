# coe_symm_toLinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0910470-77bd-b2b8-2292-43b3a33f819a",
  "kind": "lemma",
  "lexical_name": "coe_symm_toLinearEquiv",
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
  "slug": "coe-symm-tolinearequiv--a7d22d440e4c295a9c4137fd",
  "source": {
    "blob": "2f81a870daed622215ed447f5aa9908d67150337",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 122,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7d22d440e4c295a9c4137fd835dd1a8a2a0648da7271dd597b095e5e3aa0aa6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0910470-77bd-b2b8-2292-43b3a33f819a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma coe_symm_toLinearEquiv (f : Q₁.IsometryEquiv Q₂) : f.toLinearEquiv.symm = f.symm :=
  rfl

end IsometryEquiv

namespace Equivalent

variable {Q₁ : QuadraticMap R M₁ N} {Q₂ : QuadraticMap R M₂ N} {Q₃ : QuadraticMap R M₃ N}

@[refl]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f81a870daed622215ed447f5aa9908d67150337` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
