# InvariantForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00a0b9e11b91335c526955835e6626ee34d91a6c84db052b0480d425d0b54cb5",
  "kind": "structure",
  "lexical_name": "InvariantForm",
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
  "slug": "invariantform--51726d17e0eefde8933edde2",
  "source": {
    "blob": "d9710b3d190009e8fb3cc4c4061e50105954f963",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 47,
    "path": "GRWTSK/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51726d17e0eefde8933edde27ea724853d0ad3c21b386fcea6967c68ff8178a2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00a0b9e11b91335c526955835e6626ee34d91a6c84db052b0480d425d0b54cb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InvariantForm (P : RootPairing ι R M N) where
  /-- The bilinear form bundled inside an `InvariantForm`. -/
  form : LinearMap.BilinForm R M
  symm : form.IsSymm
  ne_zero (i : ι) : form (P.root i) (P.root i) ≠ 0
  isOrthogonal_reflection (i : ι) : form.IsOrthogonal (P.reflection i)

namespace InvariantForm

variable {P : RootPairing ι R M N} (B : P.InvariantForm) (i j : ι)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9710b3d190009e8fb3cc4c4061e50105954f963` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
