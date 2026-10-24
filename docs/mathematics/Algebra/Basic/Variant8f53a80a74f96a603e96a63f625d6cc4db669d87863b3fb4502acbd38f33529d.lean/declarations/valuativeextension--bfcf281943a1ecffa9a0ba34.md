# ValuativeExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b188534a24ab454f82deeb78be56aabe9e1d36900f75117360872a38b0ae9426",
  "kind": "class",
  "lexical_name": "ValuativeExtension",
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
  "slug": "valuativeextension--bfcf281943a1ecffa9a0ba34",
  "source": {
    "blob": "a4039b8556d8511892728b54bb257ff71e8b823b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1249,
    "line": 1235,
    "path": "GRWTSK/Algebra/Basic/Variant8f53a80a74f96a603e96a63f625d6cc4db669d87863b3fb4502acbd38f33529d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfcf281943a1ecffa9a0ba340dd540de805f30929bc47c51c9b901cb9d31e18c",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant8f53a80a74f96a603e96a63f625d6cc4db669d87863b3fb4502acbd38f33529d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b188534a24ab454f82deeb78be56aabe9e1d36900f75117360872a38b0ae9426`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1235–1249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ValuativeExtension (A B : Type*) [CommSemiring A] [Semiring B] [ValuativeRel A]
    [ValuativeRel B] [Algebra A B] where
  vle_iff_vle (a b : A) : algebraMap A B a ≤ᵥ algebraMap A B b ↔ a ≤ᵥ b

namespace ValuativeExtension

open ValuativeRel ValueGroupWithZero MonoidWithZeroHom ValueGroup₀

variable {A B : Type*}

section Semiring

variable [CommSemiring A] [Semiring B] [ValuativeRel A] [ValuativeRel B]
  [Algebra A B] [ValuativeExtension A B]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant8f53a80a74f96a603e96a63f625d6cc4db669d87863b3fb4502acbd38f33529d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant8f53a80a74f96a603e96a63f625d6cc4db669d87863b3fb4502acbd38f33529d.lean#L1235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4039b8556d8511892728b54bb257ff71e8b823b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
