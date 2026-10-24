# HasAntidiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b53aff6402fa6a752f44eab9e3c8888ea6a925510f0a6c6dfa3ed3800a0055d",
  "kind": "class",
  "lexical_name": "HasAntidiagonal",
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
  "slug": "hasantidiagonal--98eb33aaf89cd257295d7885",
  "source": {
    "blob": "038622a4fcf4e5e2f5a767511d6b6552198bdb2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 64,
    "path": "GRWTSK/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98eb33aaf89cd257295d7885fedf1d57ee6aa130268a6a00cbcd7371ae531e63",
  "verification": {
    "reference": "docs/verification/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b53aff6402fa6a752f44eab9e3c8888ea6a925510f0a6c6dfa3ed3800a0055d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HasAntidiagonal (A : Type*) [Add A] where
  /-- The antidiagonal of an element `n` is the finset of pairs `(i, j)` such that
  `i + j = n`. -/
  antidiagonal : A → Finset (A × A)
  /-- A pair belongs to `antidiagonal n` iff the sum of its components is equal to `n`. -/
  mem_antidiagonal {n} {a} : a ∈ antidiagonal n ↔ a.fst + a.snd = n

export HasAntidiagonal (antidiagonal mem_antidiagonal)

attribute [simp] mem_antidiagonal

/-- The class of multiplicative types with a mulAntidiagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `038622a4fcf4e5e2f5a767511d6b6552198bdb2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
