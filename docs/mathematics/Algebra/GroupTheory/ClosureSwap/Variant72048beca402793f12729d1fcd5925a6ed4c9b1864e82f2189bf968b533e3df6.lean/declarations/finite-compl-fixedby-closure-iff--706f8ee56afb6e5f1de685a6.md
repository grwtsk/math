# finite_compl_fixedBy_closure_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c001256-3104-2fbe-31d7-e2afc84e0552",
  "kind": "theorem",
  "lexical_name": "finite_compl_fixedBy_closure_iff",
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
  "slug": "finite-compl-fixedby-closure-iff--706f8ee56afb6e5f1de685a6",
  "source": {
    "blob": "32b57f5199973f4b6823460da74539da2fd4910d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 41,
    "path": "GRWTSK/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:706f8ee56afb6e5f1de685a6ab7b9ed8613de3371601443f6fe66a99eb2f7716",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c001256-3104-2fbe-31d7-e2afc84e0552`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_compl_fixedBy_closure_iff {S : Set G} :
    (∀ g ∈ closure S, (fixedBy α g)ᶜ.Finite) ↔ ∀ g ∈ S, (fixedBy α g)ᶜ.Finite :=
  ⟨fun h g hg ↦ h g (subset_closure hg), fun h g hg ↦ by
    refine closure_induction h (by simp) (fun g g' _ _ hg hg' ↦ (hg.union hg').subset ?_)
      (by simp) hg
    simp_rw [← compl_inter, compl_subset_compl, fixedBy_mul]⟩

/-- Given a symmetric generating set of a permutation group, if T is a nonempty proper subset of
an orbit, then there exists a generator that sends some element of T into the complement of T. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32b57f5199973f4b6823460da74539da2fd4910d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
