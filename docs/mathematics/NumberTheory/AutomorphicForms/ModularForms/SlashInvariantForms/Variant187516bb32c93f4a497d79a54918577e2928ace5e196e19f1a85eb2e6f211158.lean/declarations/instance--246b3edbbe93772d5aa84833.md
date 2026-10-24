# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5039c841e59009ba8a24de44015dd58f90a6b470a31cdc72bfbca36a7b06ca4a",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--246b3edbbe93772d5aa84833",
  "source": {
    "blob": "9968e1720228de8129e8a29a4b1f7719e39960c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant187516bb32c93f4a497d79a54918577e2928ace5e196e19f1a85eb2e6f211158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:246b3edbbe93772d5aa8483352b213013127f57e748c63dea6cca511e207e71c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant187516bb32c93f4a497d79a54918577e2928ace5e196e19f1a85eb2e6f211158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5039c841e59009ba8a24de44015dd58f90a6b470a31cdc72bfbca36a7b06ca4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) SlashInvariantFormClass.coeToFun [SlashInvariantFormClass F Γ k] :
    CoeFun F fun _ => ℍ → ℂ :=
  FunLike.hasCoeToFun
#align slash_invariant_form.slash_invariant_form_class.coe_to_fun SlashInvariantForm.SlashInvariantFormClass.coeToFun

-- @[simp] -- Porting note: simpNF says LHS simplifies to something more complex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant187516bb32c93f4a497d79a54918577e2928ace5e196e19f1a85eb2e6f211158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant187516bb32c93f4a497d79a54918577e2928ace5e196e19f1a85eb2e6f211158.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9968e1720228de8129e8a29a4b1f7719e39960c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
