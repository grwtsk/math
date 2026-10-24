# Module.ofMinimalAxioms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf5d77be4d259b9895a7c2cd2caef8a75c932aafb194067129e1ab483ca2aec4",
  "kind": "abbrev",
  "lexical_name": "Module.ofMinimalAxioms",
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
  "slug": "module-ofminimalaxioms--933f91e4ca2c2238dc914e19",
  "source": {
    "blob": "50e16b3cebcf428ee0b58cc275392c75f40d6d3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 24,
    "path": "GRWTSK/Algebra/LinearAlgebra/MinimalAxioms/Variant7c36718afbd206ad1bb4d7a0e859941cfbf5f47f51994fe000a97d4796c7cc52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:933f91e4ca2c2238dc914e197e2be8d51e765635a7860ec994135f340c4f052e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MinimalAxioms/Variant7c36718afbd206ad1bb4d7a0e859941cfbf5f47f51994fe000a97d4796c7cc52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf5d77be4d259b9895a7c2cd2caef8a75c932aafb194067129e1ab483ca2aec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev Module.ofMinimalAxioms {R : Type u} {M : Type v} [Semiring R] [AddCommGroup M] [SMul R M]
    -- Scalar multiplication distributes over addition from the left.
    (smul_add : ∀ (r : R) (x y : M), r • (x + y) = r • x + r • y)
    -- Scalar multiplication distributes over addition from the right.
    (add_smul : ∀ (r s : R) (x : M), (r + s) • x = r • x + s • x)
    -- Scalar multiplication distributes over multiplication from the right.
    (mul_smul : ∀ (r s : R) (x : M), (r * s) • x = r • s • x)
    -- Scalar multiplication by one is the identity.
    (one_smul : ∀ x : M, (1 : R) • x = x) : Module R M :=
  { smul_add := smul_add,
    add_smul := add_smul,
    mul_smul := mul_smul,
    one_smul := one_smul,
    zero_smul := fun x =>
      (AddMonoidHom.mk' (· • x) fun r s => add_smul r s x).map_zero
    smul_zero := fun r => (AddMonoidHom.mk' (r • ·) (smul_add r)).map_zero }
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MinimalAxioms/Variant7c36718afbd206ad1bb4d7a0e859941cfbf5f47f51994fe000a97d4796c7cc52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MinimalAxioms/Variant7c36718afbd206ad1bb4d7a0e859941cfbf5f47f51994fe000a97d4796c7cc52.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50e16b3cebcf428ee0b58cc275392c75f40d6d3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
