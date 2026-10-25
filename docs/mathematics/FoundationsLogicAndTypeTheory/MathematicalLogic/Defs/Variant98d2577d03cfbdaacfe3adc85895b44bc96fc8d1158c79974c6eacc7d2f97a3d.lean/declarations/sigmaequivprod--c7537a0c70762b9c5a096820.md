# sigmaEquivProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d65f201da5de523579a210d962b61dd320823999802c9bfed3a10334d906272",
  "kind": "def",
  "lexical_name": "sigmaEquivProd",
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
  "slug": "sigmaequivprod--c7537a0c70762b9c5a096820",
  "source": {
    "blob": "75b56a0b9d635416e05acf39b2f84e2c965863ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 840,
    "line": 833,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant98d2577d03cfbdaacfe3adc85895b44bc96fc8d1158c79974c6eacc7d2f97a3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7537a0c70762b9c5a0968206132f9741a099a44e3470bf13634bcc4ad8fcb2c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant98d2577d03cfbdaacfe3adc85895b44bc96fc8d1158c79974c6eacc7d2f97a3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d65f201da5de523579a210d962b61dd320823999802c9bfed3a10334d906272`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 833–840.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaEquivProd (α β : Type*) : (Σ _ : α, β) ≃ α × β :=
  ⟨fun a => ⟨a.1, a.2⟩, fun a => ⟨a.1, a.2⟩, fun ⟨_, _⟩ => rfl, fun ⟨_, _⟩ => rfl⟩
#align equiv.sigma_equiv_prod_apply Equiv.sigmaEquivProd_apply
#align equiv.sigma_equiv_prod_symm_apply Equiv.sigmaEquivProd_symm_apply
#align equiv.sigma_equiv_prod Equiv.sigmaEquivProd

/-- If each fiber of a `Sigma` type is equivalent to a fixed type, then the sigma type
is equivalent to the product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant98d2577d03cfbdaacfe3adc85895b44bc96fc8d1158c79974c6eacc7d2f97a3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant98d2577d03cfbdaacfe3adc85895b44bc96fc8d1158c79974c6eacc7d2f97a3d.lean#L833).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75b56a0b9d635416e05acf39b2f84e2c965863ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
