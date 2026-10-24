# CuspForm.copy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f835f4451bca0aa3e6bea5804ca8552a361de83f9a408d8da5b6e22a86503dc3",
  "kind": "def",
  "lexical_name": "CuspForm.copy",
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
  "slug": "cuspform-copy--7ed52bca1973db3958495d4a",
  "source": {
    "blob": "abf70e98aafbf0871a208dbd80e296934efc75a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 139,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ed52bca1973db3958495d4ac2e30623a257c85e05b5d3dec8bd680cbb98ed07",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f835f4451bca0aa3e6bea5804ca8552a361de83f9a408d8da5b6e22a86503dc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def CuspForm.copy (f : CuspForm Γ k) (f' : ℍ → ℂ) (h : f' = ⇑f) : CuspForm Γ k where
  toSlashInvariantForm := f.1.copy f' h
  holo' := h.symm ▸ f.holo'
  zero_at_infty' A := h.symm ▸ f.zero_at_infty' A
#align cusp_form.copy CuspForm.copy

end ModularForm

namespace ModularForm

open SlashInvariantForm

variable {F : Type*} {Γ : Subgroup SL(2, ℤ)} {k : ℤ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abf70e98aafbf0871a208dbd80e296934efc75a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
