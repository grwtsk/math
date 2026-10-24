# PrimeInsertionEdge.source_ssubset_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73d57c28-ee3c-b47c-dcf0-8065236ce5e8",
  "kind": "theorem",
  "lexical_name": "PrimeInsertionEdge.source_ssubset_target",
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
  "slug": "primeinsertionedge-source-ssubset-target--a4ee17c860129c194c404e76",
  "source": {
    "blob": "16fba5685bb013b96e547e6cec7f81bad10039e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 62,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant08986d56ba73d6fb3698c2091f98b31d34ce44fc9f0b2c5fd87d436cf2f21ea0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4ee17c860129c194c404e7645e626820a291f26240f6e5bf08896f09a218cc1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant08986d56ba73d6fb3698c2091f98b31d34ce44fc9f0b2c5fd87d436cf2f21ea0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73d57c28-ee3c-b47c-dcf0-8065236ce5e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimeInsertionEdge.source_ssubset_target
    {primeUniverse : FinitePrimeUniverse}
    (edge : PrimeInsertionEdge primeUniverse) :
    edge.source ⊂ edge.target := by
  exact Finset.ssubset_iff_subset_ne.mpr
    ⟨Finset.subset_insert _ _, by
      intro equality
      have :
          edge.prime ∈ edge.source := by
        rw [equality]
        exact Finset.mem_insert_self _ _
      exact edge.prime_not_mem this⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant08986d56ba73d6fb3698c2091f98b31d34ce44fc9f0b2c5fd87d436cf2f21ea0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant08986d56ba73d6fb3698c2091f98b31d34ce44fc9f0b2c5fd87d436cf2f21ea0.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16fba5685bb013b96e547e6cec7f81bad10039e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
