# Isocrystal.frobenius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03670679c7dc35094d862fdb8a82fd6d17922a5c80e66b20c3913eea5c98c8a1",
  "kind": "def",
  "lexical_name": "Isocrystal.frobenius",
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
  "slug": "isocrystal-frobenius--3c3f3695b4a97eed9825bbe1",
  "source": {
    "blob": "ce5f6f64cc13fc4505ab3389e5d29798d3cebf68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 129,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c3f3695b4a97eed9825bbe1518fcfa936313f606285f0b1cdc1baedb5c15eb4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03670679c7dc35094d862fdb8a82fd6d17922a5c80e66b20c3913eea5c98c8a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Isocrystal.frobenius : V ≃ᶠˡ[p, k] V :=
  @Isocrystal.frob p _ k _ _ _ _ _ _ _
#align witt_vector.isocrystal.frobenius WittVector.Isocrystal.frobenius

variable (V)

scoped[Isocrystal] notation "Φ(" p ", " k ")" => WittVector.Isocrystal.frobenius p k

/-- A homomorphism between isocrystals respects the Frobenius map. -/
-- Porting note(https://github.com/leanprover-community/mathlib4/issues/5171):
-- removed @[nolint has_nonempty_instance]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce5f6f64cc13fc4505ab3389e5d29798d3cebf68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
