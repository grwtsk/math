# DistribMulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a584de633440caf0e053304baa9148ee678c02658372fbcb3eeb511a18accedb",
  "kind": "class",
  "lexical_name": "DistribMulAction",
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
  "slug": "distribmulaction--1d98ee75e59665826566e8da",
  "source": {
    "blob": "271795db47ffe1508fd9eb219553482ce6ad8abf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 341,
    "path": "GRWTSK/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d98ee75e59665826566e8da5e6487762d3b13967a022b7a649d7327982085ee",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a584de633440caf0e053304baa9148ee678c02658372fbcb3eeb511a18accedb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class DistribMulAction (M A : Type*) [Monoid M] [AddMonoid A] extends MulAction M A where
  /-- Multiplying `0` by a scalar gives `0` -/
  smul_zero : ∀ a : M, a • (0 : A) = 0
  /-- Scalar multiplication distributes across addition -/
  smul_add : ∀ (a : M) (x y : A), a • (x + y) = a • x + a • y

section

variable [Monoid M] [AddMonoid A] [DistribMulAction M A]

-- See note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `271795db47ffe1508fd9eb219553482ce6ad8abf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
