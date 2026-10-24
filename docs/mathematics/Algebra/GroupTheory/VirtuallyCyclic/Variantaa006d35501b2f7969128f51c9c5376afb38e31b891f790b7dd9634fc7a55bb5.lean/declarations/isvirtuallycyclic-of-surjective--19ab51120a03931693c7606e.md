# IsVirtuallyCyclic.of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5ec2ad3-6283-67b2-480e-71885d45e991",
  "kind": "theorem",
  "lexical_name": "IsVirtuallyCyclic.of_surjective",
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
  "slug": "isvirtuallycyclic-of-surjective--19ab51120a03931693c7606e",
  "source": {
    "blob": "860200fdf1bdb164b6fa71707ac5d1512534e2a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 88,
    "path": "GRWTSK/Algebra/GroupTheory/VirtuallyCyclic/Variantaa006d35501b2f7969128f51c9c5376afb38e31b891f790b7dd9634fc7a55bb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19ab51120a03931693c7606ea2c7ab783a1067e2298e8b4d883db761d4ff204d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/VirtuallyCyclic/Variantaa006d35501b2f7969128f51c9c5376afb38e31b891f790b7dd9634fc7a55bb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5ec2ad3-6283-67b2-480e-71885d45e991`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsVirtuallyCyclic.of_surjective (f : G →* G') (hf : Function.Surjective f)
    [IsVirtuallyCyclic G] : IsVirtuallyCyclic G' := by
  obtain ⟨H, hc, hfi⟩ := exists_isCyclic_and_finiteIndex G
  exact ⟨H.map f, isCyclic_of_surjective _ (f.subgroupMap_surjective H),
    Subgroup.FiniteIndex.map_of_surjective H hf⟩

/-- A group embedding into a virtually cyclic group is virtually cyclic. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/VirtuallyCyclic/Variantaa006d35501b2f7969128f51c9c5376afb38e31b891f790b7dd9634fc7a55bb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/VirtuallyCyclic/Variantaa006d35501b2f7969128f51c9c5376afb38e31b891f790b7dd9634fc7a55bb5.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `860200fdf1bdb164b6fa71707ac5d1512534e2a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
