# coe_piMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b8944f3-aed6-3dee-abfd-c374bebb388f",
  "kind": "theorem",
  "lexical_name": "coe_piMap",
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
  "slug": "coe-pimap--c0a92bf8f096090d0f9ec228",
  "source": {
    "blob": "afa008609ea31c48770b74eed32bc8862c10c06b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 156,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant7a126b367e60c4ead091ec067ddfd2f2932f3aad164f84c425466661e3217101.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0a92bf8f096090d0f9ec22845335748c6a39d413a2f7aa40e7199797cf0e259",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant7a126b367e60c4ead091ec067ddfd2f2932f3aad164f84c425466661e3217101.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b8944f3-aed6-3dee-abfd-c374bebb388f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_piMap {ψ : ι → Type*} [∀ i, AddCommMonoid (ψ i)] [∀ i, Module R (ψ i)]
    (f : ∀ i, φ i →ₗ[R] ψ i) : ⇑(piMap f) = Pi.map fun i ↦ f i :=
  rfl

/-- Linear map between the function spaces `I → M₂` and `I → M₃`, induced by a linear map `f`
between `M₂` and `M₃`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant7a126b367e60c4ead091ec067ddfd2f2932f3aad164f84c425466661e3217101.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant7a126b367e60c4ead091ec067ddfd2f2932f3aad164f84c425466661e3217101.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afa008609ea31c48770b74eed32bc8862c10c06b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
