# compression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90aed362d645cbdad781ffeba701857b37582548048defcd58ed38b62d6d0958",
  "kind": "def",
  "lexical_name": "compression",
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
  "slug": "compression--1d9dc076b74dff17d699a85a",
  "source": {
    "blob": "7c47bdf6d24b36ee4ca647662e14a0ba4e10c448",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 212,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d9dc076b74dff17d699a85ac2f504ab2496129d3a970ee997db3a0f925c4e73",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90aed362d645cbdad781ffeba701857b37582548048defcd58ed38b62d6d0958`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compression (a : α) (𝒜 : Finset (Finset α)) : Finset (Finset α) :=
  {s ∈ 𝒜 | erase s a ∈ 𝒜}.disjUnion {s ∈ 𝒜.image fun s ↦ erase s a | s ∉ 𝒜} <|
    disjoint_left.2 fun _s h₁ h₂ ↦ (mem_filter.1 h₂).2 (mem_filter.1 h₁).1

@[inherit_doc]
scoped[FinsetFamily] notation "𝓓 " => Down.compression

open FinsetFamily

/-- `a` is in the down-compressed family iff it's in the original and its compression is in the
original, or it's not in the original but it's the compression of something in the original. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c47bdf6d24b36ee4ca647662e14a0ba4e10c448` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
