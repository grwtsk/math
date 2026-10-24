# monoidHomEquivMulActionIsScalarTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa0bd3782d6ff8dd672336aaed8e37042c9c439eb2e880eaf833248423b66666",
  "kind": "def",
  "lexical_name": "monoidHomEquivMulActionIsScalarTower",
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
  "slug": "monoidhomequivmulactionisscalartower--319d3040aad171333aa4947a",
  "source": {
    "blob": "b3a78aa1913dcb4014eb1ccb5e90542d16b6e209",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 108,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:319d3040aad171333aa4947a7c69118f3c97eb81f5f2296bf72052f44704e28b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa0bd3782d6ff8dd672336aaed8e37042c9c439eb2e880eaf833248423b66666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monoidHomEquivMulActionIsScalarTower (M N) [Monoid M] [Monoid N] :
    (M →* N) ≃ {_inst : MulAction M N // IsScalarTower M N N} where
  toFun f := ⟨MulAction.compHom N f, SMul.comp.isScalarTower _⟩
  invFun := fun ⟨_, _⟩ ↦ MonoidHom.smulOneHom
  left_inv f := MonoidHom.ext fun m ↦ mul_one (f m)
  right_inv := fun ⟨_, _⟩ ↦ Subtype.ext <| MulAction.ext <| funext₂ <| smul_one_smul N

end CompatibleScalar
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3a78aa1913dcb4014eb1ccb5e90542d16b6e209` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
