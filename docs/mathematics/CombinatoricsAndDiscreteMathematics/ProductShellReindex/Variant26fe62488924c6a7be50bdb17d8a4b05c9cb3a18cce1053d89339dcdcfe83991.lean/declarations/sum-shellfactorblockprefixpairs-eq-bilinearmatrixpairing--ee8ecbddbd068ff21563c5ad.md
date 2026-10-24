# sum_shellFactorBlockPrefixPairs_eq_bilinearMatrixPairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf26edc9-6319-e0d5-70cf-fc592fcf7129",
  "kind": "theorem",
  "lexical_name": "sum_shellFactorBlockPrefixPairs_eq_bilinearMatrixPairing",
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
  "slug": "sum-shellfactorblockprefixpairs-eq-bilinearmatrixpairing--ee8ecbddbd068ff21563c5ad",
  "source": {
    "blob": "d744c991ffed0c19e11ad9bbd2eb8343c1ba2ffd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 291,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee8ecbddbd068ff21563c5ad78beb2e34061f8c468b70836e8573825ab18940e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf26edc9-6319-e0d5-70cf-fc592fcf7129`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_shellFactorBlockPrefixPairs_eq_bilinearMatrixPairing
    {N q x : ℕ} (B : TypeIIShellFactorBlock N q)
    (hx : x ∈ typeIIProductShell N q) :
    (∑ pair ∈ shellFactorBlockPrefixPairs B x,
        conductorThreeTypeIIPairTerm pair) =
      bilinearMatrixPairing (shellBlockLeftCoefficient B)
        (typeIIShellPrefixMatrix B x) (shellBlockRightCoefficient B) := by
  rw [sum_shellFactorBlockPrefixPairs_eq_sum_enteredSubtypePairs B hx]
  classical
  unfold enteredShellBlockSubtypePairs bilinearMatrixPairing
  rw [Finset.sum_filter, Fintype.sum_prod_type]
  apply Fintype.sum_congr
  intro m
  apply Fintype.sum_congr
  intro k
  by_cases h : 2 ^ q < m.1.1 * k.1.1 ∧ m.1.1 * k.1.1 ≤ x
  · simp [typeIIShellPrefixMatrix, shellBlockLeftCoefficient,
      shellBlockRightCoefficient, conductorThreeTypeIIPairTerm, h]
  · simp [typeIIShellPrefixMatrix, h]

/-- A relevant factor block witnesses that its effective product shell is
nonempty, so the clipped shell endpoint belongs to that shell. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d744c991ffed0c19e11ad9bbd2eb8343c1ba2ffd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
