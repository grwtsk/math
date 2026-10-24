# pairingDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8756170a6957d72361c414efd067c83c65290d09402d7f016c89432cfb388ee",
  "kind": "def",
  "lexical_name": "pairingDual",
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
  "slug": "pairingdual--7a5f5cddd855752c9fd8d543",
  "source": {
    "blob": "f6562262b71b8be546120e9e050d4eacfd75f4fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 69,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pairing/Variant9a27120bb42aabdea4870732fbf200ba5782bd8639dcd096dc9fbff4229bbff1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a5f5cddd855752c9fd8d5436f8d6aa74edbd332576368dd713f3ab2a7d31387",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pairing/Variant9a27120bb42aabdea4870732fbf200ba5782bd8639dcd096dc9fbff4229bbff1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8756170a6957d72361c414efd067c83c65290d09402d7f016c89432cfb388ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pairingDual (n : ℕ) :
    ⋀[R]^n (Module.Dual R M) →ₗ[R] Module.Dual R (⋀[R]^n M) :=
  alternatingMapLinearEquiv (alternatingMapToDual R M n)

variable {R M} in
open Equiv in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pairing/Variant9a27120bb42aabdea4870732fbf200ba5782bd8639dcd096dc9fbff4229bbff1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pairing/Variant9a27120bb42aabdea4870732fbf200ba5782bd8639dcd096dc9fbff4229bbff1.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6562262b71b8be546120e9e050d4eacfd75f4fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
