# GradedAlgebra.proj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:400fa14fc2f4e33ec67070f642839cc2183bcf42921de6b0f3c91a3c321ecb7a",
  "kind": "def",
  "lexical_name": "GradedAlgebra.proj",
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
  "slug": "gradedalgebra-proj--090a182b5f2f504f27e5367b",
  "source": {
    "blob": "eeae0a950ee9fd75ceff24122be9d6a347e6fa05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 228,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:090a182b5f2f504f27e5367b04a6a3ccedad9326c43748b74323f83e3ef3f34c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:400fa14fc2f4e33ec67070f642839cc2183bcf42921de6b0f3c91a3c321ecb7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GradedAlgebra.proj (𝒜 : ι → Submodule R A) [GradedAlgebra 𝒜] (i : ι) : A →ₗ[R] A :=
  (𝒜 i).subtype.comp <| (DFinsupp.lapply i).comp <| (decomposeAlgEquiv 𝒜).toAlgHom.toLinearMap
#align graded_algebra.proj GradedAlgebra.proj

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eeae0a950ee9fd75ceff24122be9d6a347e6fa05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
