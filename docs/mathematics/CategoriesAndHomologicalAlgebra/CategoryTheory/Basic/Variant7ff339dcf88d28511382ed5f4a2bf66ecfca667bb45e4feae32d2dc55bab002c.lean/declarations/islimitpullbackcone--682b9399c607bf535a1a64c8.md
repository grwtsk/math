# isLimitPullbackCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a7ed49e537c51a3f875ecdd2f81b8eb483cb2a4cf82b5dfe521f65f0c36d2dd",
  "kind": "def",
  "lexical_name": "isLimitPullbackCone",
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
  "slug": "islimitpullbackcone--682b9399c607bf535a1a64c8",
  "source": {
    "blob": "008c9060f2ab72704ddf82dc74ba65f60000900d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 332,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ff339dcf88d28511382ed5f4a2bf66ecfca667bb45e4feae32d2dc55bab002c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:682b9399c607bf535a1a64c8fd5d9818d714213d612f13d45ddee7007827ce4e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ff339dcf88d28511382ed5f4a2bf66ecfca667bb45e4feae32d2dc55bab002c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a7ed49e537c51a3f875ecdd2f81b8eb483cb2a4cf82b5dfe521f65f0c36d2dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitPullbackCone : IsLimit (pullbackCone f g pb) := by
  refine PullbackCone.IsLimit.mk
    (fst := (pullbackCone f g pb).fst) (snd := (pullbackCone f g pb).snd) _
    (fun s ↦ (homPullbackEquiv f g pb hpb s.pt).2 ⟨(s.fst, s.snd), s.condition⟩)
    (fun s ↦ congrArg (·.1.fst)
      ((homPullbackEquiv f g pb hpb s.pt).right_inv ⟨(s.fst, s.snd), s.condition⟩))
    (fun s ↦ congrArg (·.1.snd)
      ((homPullbackEquiv f g pb hpb s.pt).right_inv ⟨(s.fst, s.snd), s.condition⟩))
    (fun s m h₁ h₂ ↦ ?_)
  convert! ((homPullbackEquiv f g pb hpb s.pt).left_inv m).symm using 3
  rw [← h₁, ← h₂]; rfl

-- Arguments cannot be inferred.
include pb hpb in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ff339dcf88d28511382ed5f4a2bf66ecfca667bb45e4feae32d2dc55bab002c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ff339dcf88d28511382ed5f4a2bf66ecfca667bb45e4feae32d2dc55bab002c.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `008c9060f2ab72704ddf82dc74ba65f60000900d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
