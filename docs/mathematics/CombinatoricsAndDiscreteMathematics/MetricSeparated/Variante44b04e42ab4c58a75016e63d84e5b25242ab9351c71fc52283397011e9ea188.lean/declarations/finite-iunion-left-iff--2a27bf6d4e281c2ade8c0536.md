# finite_iUnion_left_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc9e3f0e-0a17-90f5-d356-ffa417bb2d3a",
  "kind": "theorem",
  "lexical_name": "finite_iUnion_left_iff",
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
  "slug": "finite-iunion-left-iff--2a27bf6d4e281c2ade8c0536",
  "source": {
    "blob": "3c08042ed12efcb5267729dd486b03e3b02f34e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 149,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a27bf6d4e281c2ade8c053689df473afd06f35234fa054b74c73fd8537d2135",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc9e3f0e-0a17-90f5-d356-ffa417bb2d3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_iUnion_left_iff {ι : Type*} {I : Set ι} (hI : I.Finite) {s : ι → Set X}
    {t : Set X} : AreSeparated (⋃ i ∈ I, s i) t ↔ ∀ i ∈ I, AreSeparated (s i) t := by
  induction I, hI using Set.Finite.induction_on with
  | empty => simp
  | insert _ _ hI => rw [biUnion_insert, forall_mem_insert, union_left_iff, hI]

alias ⟨_, finite_iUnion_left⟩ := finite_iUnion_left_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variante44b04e42ab4c58a75016e63d84e5b25242ab9351c71fc52283397011e9ea188.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c08042ed12efcb5267729dd486b03e3b02f34e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
