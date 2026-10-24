# preimageOfMemIntegerSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9aa3cc2f489223c55ad50cb033d6cdcd2c058180267202a691e0d48b288450de",
  "kind": "def",
  "lexical_name": "preimageOfMemIntegerSet",
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
  "slug": "preimageofmemintegerset--9d4767bd6bcda0c86d810177",
  "source": {
    "blob": "4d9efdbfb803a680bf1c8089737c33a7b147a59d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 289,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant906499593fe08f3e40015dd7af8ad257fdd4c9ce88ee52cd55fa0d636d1329d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d4767bd6bcda0c86d8101775be1d53083819c6a84ca1161e4a73d3a8f6d642a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant906499593fe08f3e40015dd7af8ad257fdd4c9ce88ee52cd55fa0d636d1329d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9aa3cc2f489223c55ad50cb033d6cdcd2c058180267202a691e0d48b288450de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preimageOfMemIntegerSet (a : integerSet K) : (𝓞 K)⁰ :=
  ⟨(mem_integerSet.mp a.prop).2.choose, mem_nonZeroDivisors_of_ne_zero (by
  simp_rw [ne_eq, ← RingOfIntegers.coe_injective.eq_iff, ← (mixedEmbedding_injective K).eq_iff,
    map_zero, (mem_integerSet.mp a.prop).2.choose_spec, ne_zero_of_mem_integerSet,
    not_false_eq_true])⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant906499593fe08f3e40015dd7af8ad257fdd4c9ce88ee52cd55fa0d636d1329d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant906499593fe08f3e40015dd7af8ad257fdd4c9ce88ee52cd55fa0d636d1329d7.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d9efdbfb803a680bf1c8089737c33a7b147a59d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
