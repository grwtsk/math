# hfdifferential_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa0302b1-8d02-0e71-1b4a-c3ce427da9d7",
  "kind": "theorem",
  "lexical_name": "hfdifferential_apply",
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
  "slug": "hfdifferential-apply--5fcf683472b4a79401df1844",
  "source": {
    "blob": "6f9cd3ac0af40c9d788231ab3a486a658df88299",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 175,
    "path": "GRWTSK/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fcf683472b4a79401df1844fd9b147e903586fcaf2b9b83e5d2122d019eb7d6",
  "verification": {
    "reference": "docs/verification/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa0302b1-8d02-0e71-1b4a-c3ce427da9d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hfdifferential_apply {f : C^∞⟮I, M; I', M'⟯} {x : M} {y : M'} (h : f x = y)
    (v : PointDerivation I x) (g : C^∞⟮I', M'; 𝕜⟯) : 𝒅ₕ h v g = 𝒅 f x v g :=
  rfl
@[deprecated (since := "2024-11-11")] alias apply_hfdifferential := hfdifferential_apply

variable {E'' : Type*} [NormedAddCommGroup E''] [NormedSpace 𝕜 E''] {H'' : Type*}
  [TopologicalSpace H''] {I'' : ModelWithCorners 𝕜 E'' H''} {M'' : Type*} [TopologicalSpace M'']
  [ChartedSpace H'' M'']

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f9cd3ac0af40c9d788231ab3a486a658df88299` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
