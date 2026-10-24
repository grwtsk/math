# WangZahlDiffuseAlternative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da5c21940971644279b05a261443e3b8eb9762e83eb568795e02e367d4a97d87",
  "kind": "def",
  "lexical_name": "WangZahlDiffuseAlternative",
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
  "slug": "wangzahldiffusealternative--a2b463e5c8b3995c04ef4913",
  "source": {
    "blob": "b2f5de5b042a6d3891475322411b114af2b24399",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 554,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant93d450892ce7d175281b84e73403176426cf0fed6758bb04cc30e8878a6b1018.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2b463e5c8b3995c04ef49138f95e9322bff33d9a084ddde95f06b3ee60fd8e1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant93d450892ce7d175281b84e73403176426cf0fed6758bb04cc30e8878a6b1018.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da5c21940971644279b05a261443e3b8eb9762e83eb568795e02e367d4a97d87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 554–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def WangZahlDiffuseAlternative
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (state : TypeIISurgeryState N A base) : Prop :=
  state.interaction.activeAtoms.Nonempty ∧
    state.interaction.activeAtoms =
      state.correlation.realization.family.tubes ∧
    ∃ epsilon pWZ : ℝ, 0 < epsilon ∧ 0 ≤ pWZ ∧
      ∃ wolffConstant : ℝ≥0∞, wolffConstant ≠ ∞ ∧
        KatzTaoConvexWolffAtMost
            state.correlation.realization.family wolffConstant ∧
          WangZahlUnionLowerBoundAt
            state.correlation.realization.family epsilon pWZ wolffConstant

/-- A particular cluster is a surgical-neck candidate only when its finite
link is realized inside a measured shading-intersection nerve and a proposed
child complexity strictly decreases.  Topological classification and the
surgery correlation inequality remain separate obligations. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant93d450892ce7d175281b84e73403176426cf0fed6758bb04cc30e8878a6b1018.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant93d450892ce7d175281b84e73403176426cf0fed6758bb04cc30e8878a6b1018.lean#L554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2f5de5b042a6d3891475322411b114af2b24399` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
