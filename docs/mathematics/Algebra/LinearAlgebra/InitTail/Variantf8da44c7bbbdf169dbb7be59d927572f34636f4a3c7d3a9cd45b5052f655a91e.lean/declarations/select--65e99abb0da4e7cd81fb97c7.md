# select

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fadd6831d28661e2c70a58dfead19cc1e137315e9a530a9ade0e5d794990de40",
  "kind": "def",
  "lexical_name": "select",
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
  "slug": "select--65e99abb0da4e7cd81fb97c7",
  "source": {
    "blob": "cf9918bff47dbabff4710d2ac122304e44370cb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 63,
    "path": "GRWTSK/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65e99abb0da4e7cd81fb97c7ea7f191754b917c0b3ad8a8bf38f12ea89aac9bf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fadd6831d28661e2c70a58dfead19cc1e137315e9a530a9ade0e5d794990de40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def select (P : ℕ → Prop) (x : 𝕎 R) : 𝕎 R :=
  mk p fun n => if P n then x.coeff n else 0

section Select

variable (P : ℕ → Prop)

open scoped Classical in
/-- The polynomial that witnesses that `WittVector.select` is a polynomial function.
`selectPoly n` is `X n` if `P n` holds, and `0` otherwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf9918bff47dbabff4710d2ac122304e44370cb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
