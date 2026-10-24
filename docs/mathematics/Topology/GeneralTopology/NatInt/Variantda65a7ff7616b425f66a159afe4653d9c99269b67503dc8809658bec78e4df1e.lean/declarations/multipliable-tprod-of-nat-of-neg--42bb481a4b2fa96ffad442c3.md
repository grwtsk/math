# Multipliable.tprod_of_nat_of_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fb5f9ea-f868-000a-f027-467117bad1c7",
  "kind": "lemma",
  "lexical_name": "Multipliable.tprod_of_nat_of_neg",
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
  "slug": "multipliable-tprod-of-nat-of-neg--42bb481a4b2fa96ffad442c3",
  "source": {
    "blob": "624c07c9320fefeeaaa58de5950a512fe2c38641",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 496,
    "path": "GRWTSK/Topology/GeneralTopology/NatInt/Variantda65a7ff7616b425f66a159afe4653d9c99269b67503dc8809658bec78e4df1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42bb481a4b2fa96ffad442c39f62a21109b2d2adbdb5ff7a519b0125d255bc0d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NatInt/Variantda65a7ff7616b425f66a159afe4653d9c99269b67503dc8809658bec78e4df1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fb5f9ea-f868-000a-f027-467117bad1c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma Multipliable.tprod_of_nat_of_neg [T2Space G] {f : ℤ → G}
    (hf₁ : Multipliable fun n : ℕ ↦ f n) (hf₂ : Multipliable fun n : ℕ ↦ f (-n)) :
    ∏' n : ℤ, f n = (∏' n : ℕ, f n) * (∏' n : ℕ, f (-n)) / f 0 :=
  (hf₁.hasProd.of_nat_of_neg hf₂.hasProd).tprod_eq

end IsTopologicalGroup

section IsUniformGroup -- results which depend on completeness

variable [UniformSpace G] [IsUniformGroup G] [CompleteSpace G]

/-- "iff" version of `Multipliable.of_nat_of_neg_add_one`. -/
@[to_additive /-- "iff" version of `Summable.of_nat_of_neg_add_one`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NatInt/Variantda65a7ff7616b425f66a159afe4653d9c99269b67503dc8809658bec78e4df1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NatInt/Variantda65a7ff7616b425f66a159afe4653d9c99269b67503dc8809658bec78e4df1e.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624c07c9320fefeeaaa58de5950a512fe2c38641` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
