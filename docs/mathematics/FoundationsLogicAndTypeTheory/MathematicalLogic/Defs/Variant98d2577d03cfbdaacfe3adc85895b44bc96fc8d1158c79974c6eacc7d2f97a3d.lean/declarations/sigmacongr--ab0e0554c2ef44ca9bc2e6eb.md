# sigmaCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a55ab2f9feb85f7c936a8ca3acd86e0abce430402d9c45e63b68ae93565b3d8a",
  "kind": "def",
  "lexical_name": "sigmaCongr",
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
  "slug": "sigmacongr--ab0e0554c2ef44ca9bc2e6eb",
  "source": {
    "blob": "75b56a0b9d635416e05acf39b2f84e2c965863ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 832,
    "line": 826,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant98d2577d03cfbdaacfe3adc85895b44bc96fc8d1158c79974c6eacc7d2f97a3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab0e0554c2ef44ca9bc2e6eb476e2828f2db65feec301adef79d7dd71a1755ed",
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

Occurrence: `declaration:a55ab2f9feb85f7c936a8ca3acd86e0abce430402d9c45e63b68ae93565b3d8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 826–832.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaCongr {α₁ α₂} {β₁ : α₁ → Sort _} {β₂ : α₂ → Sort _} (f : α₁ ≃ α₂)
    (F : ∀ a, β₁ a ≃ β₂ (f a)) : Sigma β₁ ≃ Sigma β₂ :=
  (sigmaCongrRight F).trans (sigmaCongrLeft f)
#align equiv.sigma_congr Equiv.sigmaCongr

/-- `Sigma` type with a constant fiber is equivalent to the product. -/
@[simps (config := { attrs := [`mfld_simps] }) apply symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant98d2577d03cfbdaacfe3adc85895b44bc96fc8d1158c79974c6eacc7d2f97a3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant98d2577d03cfbdaacfe3adc85895b44bc96fc8d1158c79974c6eacc7d2f97a3d.lean#L826).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75b56a0b9d635416e05acf39b2f84e2c965863ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
