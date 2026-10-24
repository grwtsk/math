# toEnd_pow_apply_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f6cb1ea-5375-03d0-91dc-59e75c7084e8",
  "kind": "lemma",
  "lexical_name": "toEnd_pow_apply_map",
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
  "slug": "toend-pow-apply-map--29b10578ad2d4c246840034e",
  "source": {
    "blob": "ca58977a21555be50af2e91f35b96acf6c9b9dc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 318,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29b10578ad2d4c246840034ef40f03cd7f25c62a9cdc8f1fe1fc0bfca1a2726d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f6cb1ea-5375-03d0-91dc-59e75c7084e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toEnd_pow_apply_map (m : M) :
    (toEnd R L M₂ x ^ k) (f m) = f ((toEnd R L M x ^ k) m) :=
  LinearMap.congr_fun (toEnd_pow_comp_lieHom f k x) m

end LieModule

namespace LieSubmodule

open LieModule Set

variable {N : LieSubmodule R L M} {x : L}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca58977a21555be50af2e91f35b96acf6c9b9dc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
