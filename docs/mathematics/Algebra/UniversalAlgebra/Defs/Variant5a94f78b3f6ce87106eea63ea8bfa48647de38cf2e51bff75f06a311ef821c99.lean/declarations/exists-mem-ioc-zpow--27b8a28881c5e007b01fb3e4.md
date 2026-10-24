# exists_mem_Ioc_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a9a3bd9-a404-2ede-469a-73a9eb4e220a",
  "kind": "theorem",
  "lexical_name": "exists_mem_Ioc_zpow",
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
  "slug": "exists-mem-ioc-zpow--27b8a28881c5e007b01fb3e4",
  "source": {
    "blob": "17a16cab929f5ab10979e46078284068c567bf88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 744,
    "line": 729,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variant5a94f78b3f6ce87106eea63ea8bfa48647de38cf2e51bff75f06a311ef821c99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27b8a28881c5e007b01fb3e4a9dbdc2d5e57b29e9d7a03d675946f9e985b9af1",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Defs/Variant5a94f78b3f6ce87106eea63ea8bfa48647de38cf2e51bff75f06a311ef821c99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a9a3bd9-a404-2ede-469a-73a9eb4e220a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 729–744.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem exists_mem_Ioc_zpow {x : ℝ≥0} {y : ℝ≥0} (hx : x ≠ 0) (hy : 1 < y) :
    ∃ n : ℤ, x ∈ Set.Ioc (y ^ n) (y ^ (n + 1)) :=
  exists_mem_Ioc_zpow hx.bot_lt hy

end Pow

section Sub

/-!
### Lemmas about subtraction

In this section we provide a few lemmas about subtraction that do not fit well into any other
typeclass. For lemmas about subtraction and addition see lemmas about `OrderedSub` in the file
`Mathlib/Algebra/Order/Sub/Basic.lean`. See also `mul_tsub` and `tsub_mul`.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Defs/Variant5a94f78b3f6ce87106eea63ea8bfa48647de38cf2e51bff75f06a311ef821c99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Defs/Variant5a94f78b3f6ce87106eea63ea8bfa48647de38cf2e51bff75f06a311ef821c99.lean#L729).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17a16cab929f5ab10979e46078284068c567bf88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
