# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2a2ebebc0583c2a3bfdbaccd312c9f8901ec22ae80ff58b94633d1f58fce145",
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
  "slug": "instance--ce4e70fbc57f8f5944a0911b",
  "source": {
    "blob": "9abb579f4a02fb5141c540967af6ee5752e2bacd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 756,
    "line": 739,
    "path": "GRWTSK/Algebra/Basic/Variant3eb2c331f94ce97ef3447810aea8f73bd4d990a97299a00a65ddb8d0c6e6077d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce4e70fbc57f8f5944a0911b9f001ed09a3789d51a0dfcd00cec395bf12974ea",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant3eb2c331f94ce97ef3447810aea8f73bd4d990a97299a00a65ddb8d0c6e6077d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2a2ebebc0583c2a3bfdbaccd312c9f8901ec22ae80ff58b94633d1f58fce145`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 739–756.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (M : Type*) [AddCommGroup M] [Module R M] [Module.Finite R M] (I : Ideal R) :
    Module.Finite (R ⧸ I) (M ⧸ I • (⊤ : Submodule R M)) :=
  Module.Finite.of_restrictScalars_finite R _ _

end Submodule

end NeedsGroup

namespace Submodule

section Torsion'

open Module

variable [CommSemiring R] [AddCommMonoid M] [Module R M]
variable (S : Type*) [CommMonoid S] [DistribMulAction S M] [SMulCommClass S R M]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant3eb2c331f94ce97ef3447810aea8f73bd4d990a97299a00a65ddb8d0c6e6077d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant3eb2c331f94ce97ef3447810aea8f73bd4d990a97299a00a65ddb8d0c6e6077d.lean#L739).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9abb579f4a02fb5141c540967af6ee5752e2bacd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
