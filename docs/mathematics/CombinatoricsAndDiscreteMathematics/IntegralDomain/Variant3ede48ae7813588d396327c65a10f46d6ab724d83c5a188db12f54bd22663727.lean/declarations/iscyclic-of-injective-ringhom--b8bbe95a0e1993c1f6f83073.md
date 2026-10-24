# isCyclic_of_injective_ringHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3d8fb5e-3146-b909-ba0c-ce69be3a3611",
  "kind": "theorem",
  "lexical_name": "isCyclic_of_injective_ringHom",
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
  "slug": "iscyclic-of-injective-ringhom--b8bbe95a0e1993c1f6f83073",
  "source": {
    "blob": "09d1e8368230d25e20c3ee040463e27f381ad896",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 138,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant3ede48ae7813588d396327c65a10f46d6ab724d83c5a188db12f54bd22663727.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8bbe95a0e1993c1f6f830734c35fc3ca70ee01a978d3dc046a9b3f38d0abea3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant3ede48ae7813588d396327c65a10f46d6ab724d83c5a188db12f54bd22663727.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3d8fb5e-3146-b909-ba0c-ce69be3a3611`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCyclic_of_injective_ringHom [Finite G] (f : G →* R) (hf : Injective f) : IsCyclic G := by
  classical
    cases nonempty_fintype G
    apply isCyclic_of_card_pow_eq_one_le
    intro n hn
    exact le_trans (card_nthRoots_subgroup_units f hf hn 1) (card_nthRoots n (f 1))

@[deprecated (since := "2026-03-04")]
alias isCyclic_of_subgroup_isDomain := isCyclic_of_injective_ringHom

/-- The unit group of a finite integral domain is cyclic.

To support `ℤˣ` and other infinite monoids with finite groups of units, this requires only
`Finite Rˣ` rather than deducing it from `Finite R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant3ede48ae7813588d396327c65a10f46d6ab724d83c5a188db12f54bd22663727.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant3ede48ae7813588d396327c65a10f46d6ab724d83c5a188db12f54bd22663727.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09d1e8368230d25e20c3ee040463e27f381ad896` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
