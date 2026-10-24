# snd_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00663046-75dc-0756-10b8-510a8553939b",
  "kind": "theorem",
  "lexical_name": "snd_inv",
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
  "slug": "snd-inv--9f7889efe6f6fd31f14d82a8",
  "source": {
    "blob": "067bef3ede868081a574c985587123ab609c4cfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 710,
    "line": 700,
    "path": "GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant07c069bb1f40ad7742296b88d958f62bdf7be12f5701819bd7eb8b332ee07462.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f7889efe6f6fd31f14d82a8a2cdca2765d29ff0069e3f1ea7fa0757a437c2b6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TrivSqZeroExt/Variant07c069bb1f40ad7742296b88d958f62bdf7be12f5701819bd7eb8b332ee07462.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00663046-75dc-0756-10b8-510a8553939b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 700–710.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem snd_inv (x : tsze R M) : snd x⁻¹ = -((fst x)⁻¹ •> snd x <• (fst x)⁻¹) :=
  rfl

end Inv

/-! This section is heavily inspired by analogous results about matrices. -/
section Invertible
variable {R : Type u} {M : Type v}
variable [AddCommGroup M] [Semiring R] [Module Rᵐᵒᵖ M] [Module R M]

/-- `x.fst : R` is invertible when `x : tzre R M` is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TrivSqZeroExt/Variant07c069bb1f40ad7742296b88d958f62bdf7be12f5701819bd7eb8b332ee07462.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant07c069bb1f40ad7742296b88d958f62bdf7be12f5701819bd7eb8b332ee07462.lean#L700).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `067bef3ede868081a574c985587123ab609c4cfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
