# nonempty_cokernelData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b3b3765ee34b4738490ef21cba9d707c45c3f29bb025f7f713b5f863c108978",
  "kind": "instance",
  "lexical_name": "nonempty_cokernelData",
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
  "slug": "nonempty-cokerneldata--c550991db1ca37b63234bdc4",
  "source": {
    "blob": "7592851ac71278bf572c87df45b4167fe44bac2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 67,
    "path": "GRWTSK/Algebra/LinearAlgebra/Cokernel/Variant71c06db9e10196d77dac3bcf5ae050f5d9cd893886c10ffe8eb41808f555bc5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c550991db1ca37b63234bdc4fbffd58c740001dac3a27ef3e887310d78c38f6a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Cokernel/Variant71c06db9e10196d77dac3bcf5ae050f5d9cd893886c10ffe8eb41808f555bc5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b3b3765ee34b4738490ef21cba9d707c45c3f29bb025f7f713b5f863c108978`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nonempty_cokernelData :
    Nonempty (pres₂.CokernelData f g₁) := by
  obtain ⟨s, hs⟩ := pres₂.surjective_π.hasRightInverse
  exact ⟨CokernelData.ofSection _ _ _ s hs⟩

variable {g₁ f} (data : pres₂.CokernelData f g₁)

/-- The shape of the presentation by generators and relations of the cokernel
of `f : M₁ →ₗ[A] M₂`. It consists of a generator for each generator of `M₂`, and
there are two types of relations: one for each relation in the presentation in `M₂`,
and one for each generator of `M₁`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Cokernel/Variant71c06db9e10196d77dac3bcf5ae050f5d9cd893886c10ffe8eb41808f555bc5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Cokernel/Variant71c06db9e10196d77dac3bcf5ae050f5d9cd893886c10ffe8eb41808f555bc5c.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7592851ac71278bf572c87df45b4167fe44bac2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
