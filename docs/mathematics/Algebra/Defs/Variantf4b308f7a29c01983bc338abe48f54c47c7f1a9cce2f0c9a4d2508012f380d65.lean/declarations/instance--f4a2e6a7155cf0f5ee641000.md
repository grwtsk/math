# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14c034a87ce53e78402f1e205ca49cc76c690f6aa928d2b4321b6e036a4b591d",
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
  "slug": "instance--f4a2e6a7155cf0f5ee641000",
  "source": {
    "blob": "01b0f880254e846ec94d3daec6b466a82e1687c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 112,
    "path": "GRWTSK/Algebra/Defs/Variantf4b308f7a29c01983bc338abe48f54c47c7f1a9cce2f0c9a4d2508012f380d65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4a2e6a7155cf0f5ee641000a2779ae5070b9f71691f70fe1f3deceda504e480",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantf4b308f7a29c01983bc338abe48f54c47c7f1a9cce2f0c9a4d2508012f380d65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14c034a87ce53e78402f1e205ca49cc76c690f6aa928d2b4321b6e036a4b591d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 50) IsOrderedRing.toIsStrictOrderedRing (R : Type*)
    [Ring R] [PartialOrder R] [IsOrderedRing R] [NoZeroDivisors R] [Nontrivial R] :
    IsStrictOrderedRing R :=
  .of_mul_pos fun _ _ ap bp ↦ (mul_nonneg ap.le bp.le).lt_of_ne' (mul_ne_zero ap.ne' bp.ne')

section IsStrictOrderedRing
variable [Semiring R] [PartialOrder R] [IsStrictOrderedRing R]

-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantf4b308f7a29c01983bc338abe48f54c47c7f1a9cce2f0c9a4d2508012f380d65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantf4b308f7a29c01983bc338abe48f54c47c7f1a9cce2f0c9a4d2508012f380d65.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01b0f880254e846ec94d3daec6b466a82e1687c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
