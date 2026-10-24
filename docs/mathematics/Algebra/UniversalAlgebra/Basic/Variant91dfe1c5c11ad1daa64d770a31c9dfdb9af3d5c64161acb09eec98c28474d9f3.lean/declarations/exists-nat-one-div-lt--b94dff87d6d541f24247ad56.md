# exists_nat_one_div_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5155238-0430-079b-5849-4c7326e2a782",
  "kind": "lemma",
  "lexical_name": "exists_nat_one_div_lt",
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
  "slug": "exists-nat-one-div-lt--b94dff87d6d541f24247ad56",
  "source": {
    "blob": "8a89d0f191e70fe78dd0a0a0bfbf91443674663d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 222,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b94dff87d6d541f24247ad56d449bf9e6867beecd6ad53dda350511bae6e8146",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5155238-0430-079b-5849-4c7326e2a782`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_nat_one_div_lt (hε : 0 < ε) : ∃ n : ℕ, 1 / (n + 1 : K) < ε := by
  obtain ⟨n, hn⟩ := exists_nat_gt (1 / ε)
  use n
  rw [div_lt_iff₀, ← div_lt_iff₀' hε]
  · apply hn.trans
    simp [zero_lt_one]
  · exact n.cast_add_one_pos

variable [ExistsAddOfLE K]

/-- Every positive `x` is between two successive integer powers of
another `y` greater than one. This is the same as `exists_mem_Ioc_zpow`,
but with ≤ and < the other way around. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a89d0f191e70fe78dd0a0a0bfbf91443674663d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
