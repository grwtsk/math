# asIdealOpposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15963fbec28dcac0c55096065384a5f70028017a4f7174f525a2b0cd5b53a343",
  "kind": "def",
  "lexical_name": "asIdealOpposite",
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
  "slug": "asidealopposite--5f83572e54292699cc0c72bd",
  "source": {
    "blob": "84e569437c694cdd6fca619c4cf9ed1739f8c9b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 348,
    "path": "GRWTSK/Algebra/Operations/Variantbaa1711474cd4e6d8c991df35246f6cf7ac7c623c243959ad64086b0ed22fb86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f83572e54292699cc0c72bd4cf9fb1f86513bc1233feb4d8fcc37134714e14e",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variantbaa1711474cd4e6d8c991df35246f6cf7ac7c623c243959ad64086b0ed22fb86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15963fbec28dcac0c55096065384a5f70028017a4f7174f525a2b0cd5b53a343`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def asIdealOpposite : TwoSidedIdeal R →o Ideal Rᵐᵒᵖ where
  toFun I := asIdeal ⟨I.ringCon.op⟩
  monotone' I J h x h' := by
    simp only [mem_asIdeal, mem_iff, RingCon.op_iff, MulOpposite.unop_zero] at h' ⊢
    exact J.rel_iff _ _ |>.2 <| h <| I.rel_iff 0 x.unop |>.1 h'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variantbaa1711474cd4e6d8c991df35246f6cf7ac7c623c243959ad64086b0ed22fb86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variantbaa1711474cd4e6d8c991df35246f6cf7ac7c623c243959ad64086b0ed22fb86.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84e569437c694cdd6fca619c4cf9ed1739f8c9b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
