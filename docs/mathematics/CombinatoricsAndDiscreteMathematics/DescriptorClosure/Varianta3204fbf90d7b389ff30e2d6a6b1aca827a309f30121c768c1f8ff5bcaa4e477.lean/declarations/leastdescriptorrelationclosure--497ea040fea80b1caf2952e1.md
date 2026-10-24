# LeastDescriptorRelationClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd46eff062773f0bfce29ba754b5991148de4edf00e7d900f4150cd804e5e43b",
  "kind": "def",
  "lexical_name": "LeastDescriptorRelationClosure",
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
  "slug": "leastdescriptorrelationclosure--497ea040fea80b1caf2952e1",
  "source": {
    "blob": "906cb1319f63bc83ab3cc1cacba1dbcec6bfc2e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DescriptorClosure/Varianta3204fbf90d7b389ff30e2d6a6b1aca827a309f30121c768c1f8ff5bcaa4e477.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:497ea040fea80b1caf2952e1ce32b5608fb779dca9b728ea7a81f706b9bc56e3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DescriptorClosure/Varianta3204fbf90d7b389ff30e2d6a6b1aca827a309f30121c768c1f8ff5bcaa4e477.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd46eff062773f0bfce29ba754b5991148de4edf00e7d900f4150cd804e5e43b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LeastDescriptorRelationClosure
    (pointUniverse : PointUniverse)
    (seed closure : Finset ElementId) : Prop :=
  seed ⊆ closure ∧
  DescriptorRelationClosed pointUniverse closure ∧
  ∀ candidate,
    seed ⊆ candidate →
    DescriptorRelationClosed pointUniverse candidate →
      closure ⊆ candidate

/-- Closed finite target emitted as an immutable proposal element. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DescriptorClosure/Varianta3204fbf90d7b389ff30e2d6a6b1aca827a309f30121c768c1f8ff5bcaa4e477.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DescriptorClosure/Varianta3204fbf90d7b389ff30e2d6a6b1aca827a309f30121c768c1f8ff5bcaa4e477.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `906cb1319f63bc83ab3cc1cacba1dbcec6bfc2e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
