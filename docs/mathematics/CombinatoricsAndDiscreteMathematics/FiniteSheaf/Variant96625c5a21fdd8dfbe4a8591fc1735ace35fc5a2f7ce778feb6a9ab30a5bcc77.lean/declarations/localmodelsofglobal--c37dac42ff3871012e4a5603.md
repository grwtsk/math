# localModelsOfGlobal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4334182187dd940a5db0d6f599a0da747305a3cd509977bad65c5a00dc7e635a",
  "kind": "def",
  "lexical_name": "localModelsOfGlobal",
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
  "slug": "localmodelsofglobal--c37dac42ff3871012e4a5603",
  "source": {
    "blob": "94fcde0e3a09182f7563656d6271094f673a05a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 144,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant96625c5a21fdd8dfbe4a8591fc1735ace35fc5a2f7ce778feb6a9ab30a5bcc77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c37dac42ff3871012e4a56039fa07a195b1b469fa11fdf1d8ec982f93240ffbd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant96625c5a21fdd8dfbe4a8591fc1735ace35fc5a2f7ce778feb6a9ab30a5bcc77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4334182187dd940a5db0d6f599a0da747305a3cd509977bad65c5a00dc7e635a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def localModelsOfGlobal
    (global : sheaf.Section target) :
    CompatibleLocalSections sheaf.toPresheafData cover where
  sections := fun index ↦
    sheaf.restrict (cover.member_le index) global
  compatible := by
    intro left right
    calc
      sheaf.restrict
          (cover.overlap_le_left left right)
          (sheaf.restrict (cover.member_le left) global) =
        sheaf.restrict
          (le_trans
            (cover.overlap_le_left left right)
            (cover.member_le left))
          global :=
        sheaf.restrict_trans
          (cover.overlap_le_left left right)
          (cover.member_le left)
          global
      _ =
        sheaf.restrict
          (le_trans
            (cover.overlap_le_right left right)
            (cover.member_le right))
          global := by
        congr
      _ =
        sheaf.restrict
          (cover.overlap_le_right left right)
          (sheaf.restrict (cover.member_le right) global) :=
        (sheaf.restrict_trans
          (cover.overlap_le_right left right)
          (cover.member_le right)
          global).symm

/-- Compatible local sections have exactly one global realization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant96625c5a21fdd8dfbe4a8591fc1735ace35fc5a2f7ce778feb6a9ab30a5bcc77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant96625c5a21fdd8dfbe4a8591fc1735ace35fc5a2f7ce778feb6a9ab30a5bcc77.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94fcde0e3a09182f7563656d6271094f673a05a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
