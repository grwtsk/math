# IsSymmetric.intCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c5559eb-8f63-92ba-f50b-cd831e9ea30c",
  "kind": "theorem",
  "lexical_name": "IsSymmetric.intCast",
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
  "slug": "issymmetric-intcast--d8d9ca73def4fa6673d000af",
  "source": {
    "blob": "02a1219cbae9425cac01edc7a05b4146ab5b787e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 120,
    "path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8d9ca73def4fa6673d000af823e86e0ec5a3efc5273e0b7e5709b3c7408f234",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c5559eb-8f63-92ba-f50b-cd831e9ea30c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSymmetric.intCast (n : ℤ) : IsSymmetric (n : E →ₗ[𝕜] E) := fun x y => by
  simp [← Int.cast_smul_eq_zsmul 𝕜, inner_smul_left, inner_smul_right]

@[aesop 30% apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02a1219cbae9425cac01edc7a05b4146ab5b787e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
