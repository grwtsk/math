# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be076be884aa5a699ba15091cd53b0c8c5798727732e0dda21e4a32dcb234fdc",
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
  "slug": "instance--dcbf26890457b572dfc97f6c",
  "source": {
    "blob": "7e9defbb48c1638032450166b559487811a2f7ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 123,
    "path": "GRWTSK/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcbf26890457b572dfc97f6c4809b345a217580461ffe00c2577ce9545d369f7",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be076be884aa5a699ba15091cd53b0c8c5798727732e0dda21e4a32dcb234fdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (K : Type*) [NormedField K] : Inhabited (MulAlgebraNorm K K) :=
  ⟨{  toFun     := norm
      map_zero' := norm_zero
      add_le'   := norm_add_le
      neg'      := norm_neg
      smul'     := norm_mul
      map_one'  := norm_one
      map_mul'  := norm_mul
      eq_zero_of_map_eq_zero' := fun _ => norm_eq_zero.mp }⟩

/-- `MulAlgebraNormClass F R S` states that `F` is a type of multiplicative `R`-algebra norms on
the ring `S`. You should extend this class when you extend `MulAlgebraNorm`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e9defbb48c1638032450166b559487811a2f7ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
