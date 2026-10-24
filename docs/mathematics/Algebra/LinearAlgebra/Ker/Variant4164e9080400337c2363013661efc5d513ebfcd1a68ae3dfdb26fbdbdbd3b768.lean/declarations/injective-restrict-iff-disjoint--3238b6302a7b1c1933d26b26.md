# injective_restrict_iff_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18497277-695b-de54-5d4a-67b034105c3f",
  "kind": "theorem",
  "lexical_name": "injective_restrict_iff_disjoint",
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
  "slug": "injective-restrict-iff-disjoint--3238b6302a7b1c1933d26b26",
  "source": {
    "blob": "6dd0fc1cb55692db2ec6f5275e9b149be88b5bcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 206,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3238b6302a7b1c1933d26b268a3797ce59b0a872fe0d29f1368fbce01342d639",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18497277-695b-de54-5d4a-67b034105c3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem injective_restrict_iff_disjoint {p : Submodule R M} {f : M →ₗ[R] M}
    (hf : ∀ x ∈ p, f x ∈ p) :
    Injective (f.restrict hf) ↔ Disjoint p (ker f) := by
  rw [← ker_eq_bot, ker_restrict hf, ← ker_domRestrict, ker_eq_bot, injective_domRestrict_iff,
    disjoint_iff]

end Ring

section Semifield

variable [Semifield K]
variable [AddCommMonoid V] [Module K V]
variable [AddCommMonoid V₂] [Module K V₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dd0fc1cb55692db2ec6f5275e9b149be88b5bcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
