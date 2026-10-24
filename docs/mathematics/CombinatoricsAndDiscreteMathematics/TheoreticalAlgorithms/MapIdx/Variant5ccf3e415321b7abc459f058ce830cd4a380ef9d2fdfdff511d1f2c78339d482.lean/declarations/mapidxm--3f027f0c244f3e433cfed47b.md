# mapIdxM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52d61471e68a7536f7af8ce60212b53250b6ef08b00f3a6c42ac6e46a36a4243",
  "kind": "def",
  "lexical_name": "mapIdxM",
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
  "slug": "mapidxm--3f027f0c244f3e433cfed47b",
  "source": {
    "blob": "5c7890c3a6935e13e93fead5e236452bde73cc18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 95,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant5ccf3e415321b7abc459f058ce830cd4a380ef9d2fdfdff511d1f2c78339d482.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f027f0c244f3e433cfed47b9bf7cdd1deaa18395cddfe9fcbe7eb7e9d723ced",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant5ccf3e415321b7abc459f058ce830cd4a380ef9d2fdfdff511d1f2c78339d482.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52d61471e68a7536f7af8ce60212b53250b6ef08b00f3a6c42ac6e46a36a4243`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline, expose] def mapIdxM [Monad m] (f : Nat → α → m β) (as : List α) : m (List β) := go as #[] where
  /-- Auxiliary for `mapIdxM`:
  `mapIdxM.go [a₀, a₁, ...] acc = acc.toList ++ [f acc.size a₀, f (acc.size + 1) a₁, ...]` -/
  @[specialize] go : List α → Array β → m (List β)
  | [], acc => pure acc.toList
  | a :: as, acc => do go as (acc.push (← f acc.size a))

/-! ### mapFinIdx -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant5ccf3e415321b7abc459f058ce830cd4a380ef9d2fdfdff511d1f2c78339d482.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant5ccf3e415321b7abc459f058ce830cd4a380ef9d2fdfdff511d1f2c78339d482.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c7890c3a6935e13e93fead5e236452bde73cc18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
