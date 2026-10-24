# Multipliable.int_rec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7303ea93-149c-9e09-6ae6-15deb10b474c",
  "kind": "lemma",
  "lexical_name": "Multipliable.int_rec",
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
  "slug": "multipliable-int-rec--3886b124d1d7527fa950a653",
  "source": {
    "blob": "624c07c9320fefeeaaa58de5950a512fe2c38641",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 399,
    "path": "GRWTSK/Topology/GeneralTopology/NatInt/Variantda65a7ff7616b425f66a159afe4653d9c99269b67503dc8809658bec78e4df1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3886b124d1d7527fa950a653e006661da4909ed9ac9f16ca2c25501fc1764251",
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

Occurrence: `result:7303ea93-149c-9e09-6ae6-15deb10b474c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Multipliable.int_rec {f g : ℕ → M} (hf : Multipliable f) (hg : Multipliable g) :
    Multipliable (Int.rec f g) :=
  .of_nat_of_neg_add_one hf hg

/-- If `f₀, f₁, f₂, ...` and `g₀, g₁, g₂, ...` are both multipliable, then the product of the
`ℤ`-indexed sequence: `..., g₂, g₁, g₀, f₀, f₁, f₂, ...` (with `f₀` at the `0`-th position) is
`(∏' n, f n) * ∏' n, g n`. -/
@[to_additive /-- If `f₀, f₁, f₂, ...` and `g₀, g₁, g₂, ...` are both summable, then the sum of the
`ℤ`-indexed sequence: `..., g₂, g₁, g₀, f₀, f₁, f₂, ...` (with `f₀` at the `0`-th position) is
`∑' n, f n + ∑' n, g n`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NatInt/Variantda65a7ff7616b425f66a159afe4653d9c99269b67503dc8809658bec78e4df1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NatInt/Variantda65a7ff7616b425f66a159afe4653d9c99269b67503dc8809658bec78e4df1e.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624c07c9320fefeeaaa58de5950a512fe2c38641` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
