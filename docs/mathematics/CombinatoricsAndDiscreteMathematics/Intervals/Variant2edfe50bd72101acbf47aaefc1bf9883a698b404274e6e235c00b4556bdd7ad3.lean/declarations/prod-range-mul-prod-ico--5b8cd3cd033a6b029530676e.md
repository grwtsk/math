# prod_range_mul_prod_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3dcfebc4-58c7-21e3-c017-99016710839e",
  "kind": "theorem",
  "lexical_name": "prod_range_mul_prod_Ico",
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
  "slug": "prod-range-mul-prod-ico--5b8cd3cd033a6b029530676e",
  "source": {
    "blob": "a0e6cd06348319ed0dbe41066e8a98b49bd9915e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 87,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Intervals/Variant2edfe50bd72101acbf47aaefc1bf9883a698b404274e6e235c00b4556bdd7ad3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b8cd3cd033a6b029530676e845343e39c228fd7951c2bb19278cf7c2eb3d906",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Intervals/Variant2edfe50bd72101acbf47aaefc1bf9883a698b404274e6e235c00b4556bdd7ad3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dcfebc4-58c7-21e3-c017-99016710839e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_range_mul_prod_Ico (f : ℕ → M) {m n : ℕ} (h : m ≤ n) :
    ((∏ k ∈ range m, f k) * ∏ k ∈ Ico m n, f k) = ∏ k ∈ range n, f k :=
  Nat.Ico_zero_eq_range m ▸ Nat.Ico_zero_eq_range n ▸ prod_Ico_consecutive f m.zero_le h

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Intervals/Variant2edfe50bd72101acbf47aaefc1bf9883a698b404274e6e235c00b4556bdd7ad3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Intervals/Variant2edfe50bd72101acbf47aaefc1bf9883a698b404274e6e235c00b4556bdd7ad3.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0e6cd06348319ed0dbe41066e8a98b49bd9915e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
