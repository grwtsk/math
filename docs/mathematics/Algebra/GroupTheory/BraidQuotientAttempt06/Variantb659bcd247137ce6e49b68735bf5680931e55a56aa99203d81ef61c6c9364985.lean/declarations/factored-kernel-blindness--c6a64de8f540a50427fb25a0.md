# factored_kernel_blindness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d32f171f-468b-8185-25a4-c741cf89d928",
  "kind": "theorem",
  "lexical_name": "factored_kernel_blindness",
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
  "slug": "factored-kernel-blindness--c6a64de8f540a50427fb25a0",
  "source": {
    "blob": "9a50ecfb402109cac3b7cb585dec0b3704c85f0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 227,
    "path": "GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6a64de8f540a50427fb25a0c1d5877e7c2a4d8e0c8fd840ae184bc10282929e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d32f171f-468b-8185-25a4-c741cf89d928`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factored_kernel_blindness {H:Type*} [Group H] (rho:B3→*H)
    (hrho:FactorsThrough rho) (beta kappa:B3) (hkappa:matrixRepresentation kappa=1) :
    rho (beta*kappa) = rho beta := by
  rcases hrho with ⟨phi,rfl⟩
  simp only [MonoidHom.comp_apply,map_mul,hkappa,map_one,mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a50ecfb402109cac3b7cb585dec0b3704c85f0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
