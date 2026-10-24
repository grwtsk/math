# exists_isWeierstrassDivision

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4f06ebf-1c04-6533-d457-d69c44774f2d",
  "kind": "theorem",
  "lexical_name": "exists_isWeierstrassDivision",
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
  "slug": "exists-isweierstrassdivision--b7f1cf51c675e0ae7cf67a67",
  "source": {
    "blob": "31cd361ff4a4d09e6a6f0618d0a8f34cf9b22ee2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 356,
    "path": "GRWTSK/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7f1cf51c675e0ae7cf67a67f2cf081eb552f45c551f859108162693c32f0ec8",
  "verification": {
    "reference": "docs/verification/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4f06ebf-1c04-6533-d457-d69c44774f2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isWeierstrassDivision [IsAdicComplete (IsLocalRing.maximalIdeal A) A]
    (hg : g.map (IsLocalRing.residue A) ≠ 0) : ∃ q r, f.IsWeierstrassDivision g q r :=
  ⟨_, _, (IsWeierstrassDivisor.of_map_ne_zero hg).isWeierstrassDivisionAt_div_mod f⟩

-- Unfortunately there is no Unicode subscript `w`.

/-- The quotient `q` in Weierstrass division, denoted by `f /ʷ g`. Note that when the image of
`g` in the residue field is zero, this is defined to be zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31cd361ff4a4d09e6a6f0618d0a8f34cf9b22ee2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
