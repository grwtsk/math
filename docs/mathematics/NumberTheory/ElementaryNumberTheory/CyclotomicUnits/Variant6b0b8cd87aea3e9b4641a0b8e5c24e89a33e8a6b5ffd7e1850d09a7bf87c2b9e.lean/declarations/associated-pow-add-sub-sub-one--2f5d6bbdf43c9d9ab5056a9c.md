# associated_pow_add_sub_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55743837-5fff-e2b9-4d9a-4071178e64c1",
  "kind": "theorem",
  "lexical_name": "associated_pow_add_sub_sub_one",
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
  "slug": "associated-pow-add-sub-sub-one--2f5d6bbdf43c9d9ab5056a9c",
  "source": {
    "blob": "677e157f2f594d01c856cc64635ab8ea1490d736",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 134,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/CyclotomicUnits/Variant6b0b8cd87aea3e9b4641a0b8e5c24e89a33e8a6b5ffd7e1850d09a7bf87c2b9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f5d6bbdf43c9d9ab5056a9c829e52b41580658ab409ca734e46c937b1944abc",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/CyclotomicUnits/Variant6b0b8cd87aea3e9b4641a0b8e5c24e89a33e8a6b5ffd7e1850d09a7bf87c2b9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55743837-5fff-e2b9-4d9a-4071178e64c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem associated_pow_add_sub_sub_one (hζ : IsPrimitiveRoot ζ n) (hn : 2 ≤ n) (i : ℕ)
    (hjn : j.Coprime n) : Associated (ζ - 1) (ζ ^ (i + j) - ζ ^ i) := by
  use (hζ.isUnit (by lia)).unit ^ i * (hζ.geom_sum_isUnit hn hjn).unit
  suffices (ζ - 1) * ζ ^ i * ∑ i ∈ range j, ζ ^ i = (ζ ^ (i + j) - ζ ^ i) by
    simp [← this, mul_assoc]
  grind [mul_geom_sum]

/-- If `p` is prime and `ζ` is a `p`-th primitive root of unity, then `ζ - 1` and `η₁ - η₂` are
  associated for all distinct `p`-th roots of unity `η₁` and `η₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/CyclotomicUnits/Variant6b0b8cd87aea3e9b4641a0b8e5c24e89a33e8a6b5ffd7e1850d09a7bf87c2b9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/CyclotomicUnits/Variant6b0b8cd87aea3e9b4641a0b8e5c24e89a33e8a6b5ffd7e1850d09a7bf87c2b9e.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `677e157f2f594d01c856cc64635ab8ea1490d736` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
