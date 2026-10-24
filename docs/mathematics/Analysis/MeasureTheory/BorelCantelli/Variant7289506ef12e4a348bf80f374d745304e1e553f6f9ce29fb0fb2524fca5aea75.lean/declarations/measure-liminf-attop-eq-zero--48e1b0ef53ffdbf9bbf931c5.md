# measure_liminf_atTop_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60a00517-75ea-c869-c648-77fa28161a57",
  "kind": "theorem",
  "lexical_name": "measure_liminf_atTop_eq_zero",
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
  "slug": "measure-liminf-attop-eq-zero--48e1b0ef53ffdbf9bbf931c5",
  "source": {
    "blob": "4b45d5561a479ef898ed951b1de23b8553caedef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 109,
    "path": "GRWTSK/Analysis/MeasureTheory/BorelCantelli/Variant7289506ef12e4a348bf80f374d745304e1e553f6f9ce29fb0fb2524fca5aea75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48e1b0ef53ffdbf9bbf931c582008bb73c90a065225c8821c4063bcad51a1140",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BorelCantelli/Variant7289506ef12e4a348bf80f374d745304e1e553f6f9ce29fb0fb2524fca5aea75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60a00517-75ea-c869-c648-77fa28161a57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_liminf_atTop_eq_zero {s : ℕ → Set α} (h : (∑' i, μ (s i)) ≠ ∞) :
    μ (liminf s atTop) = 0 := by
  rw [← Nat.cofinite_eq_atTop, measure_liminf_cofinite_eq_zero h]

-- TODO: the next 2 lemmas are true for any filter with countable intersections, not only `ae`.
-- Need to specify `α := Set α` below because of diamond; see https://github.com/leanprover-community/mathlib4/pull/19041
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BorelCantelli/Variant7289506ef12e4a348bf80f374d745304e1e553f6f9ce29fb0fb2524fca5aea75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BorelCantelli/Variant7289506ef12e4a348bf80f374d745304e1e553f6f9ce29fb0fb2524fca5aea75.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b45d5561a479ef898ed951b1de23b8553caedef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
