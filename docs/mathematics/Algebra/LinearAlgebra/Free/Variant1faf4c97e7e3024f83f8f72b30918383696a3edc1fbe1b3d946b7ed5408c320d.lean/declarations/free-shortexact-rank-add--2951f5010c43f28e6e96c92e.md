# free_shortExact_rank_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f090ac36-b6e0-76a3-ff01-613c55530329",
  "kind": "theorem",
  "lexical_name": "free_shortExact_rank_add",
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
  "slug": "free-shortexact-rank-add--2951f5010c43f28e6e96c92e",
  "source": {
    "blob": "30641eed758d13db6192f293859da9d12f9be75d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 177,
    "path": "GRWTSK/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2951f5010c43f28e6e96c92e85e09aa6a3f36c605e8e1e8041733f6b91d8fed8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f090ac36-b6e0-76a3-ff01-613c55530329`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem free_shortExact_rank_add [Module.Free R S.X₁] [Module.Free R S.X₃]
    [StrongRankCondition R] :
    Module.rank R S.X₂ = Module.rank R S.X₁ + Module.rank R S.X₃ := by
  haveI := free_shortExact hS'
  rw [Module.Free.rank_eq_card_chooseBasisIndex, Module.Free.rank_eq_card_chooseBasisIndex R S.X₁,
    Module.Free.rank_eq_card_chooseBasisIndex R S.X₃, Cardinal.add_def, Cardinal.eq]
  exact ⟨Basis.indexEquiv (Module.Free.chooseBasis R S.X₂) (Basis.ofShortExact hS'
    (Module.Free.chooseBasis R S.X₁) (Module.Free.chooseBasis R S.X₃))⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30641eed758d13db6192f293859da9d12f9be75d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
