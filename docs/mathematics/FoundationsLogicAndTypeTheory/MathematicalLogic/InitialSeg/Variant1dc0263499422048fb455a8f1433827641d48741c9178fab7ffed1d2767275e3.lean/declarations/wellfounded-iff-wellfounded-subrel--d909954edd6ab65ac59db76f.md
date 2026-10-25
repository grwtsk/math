# wellFounded_iff_wellFounded_subrel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74d05cc2-7d26-73db-bea6-e428d20445f3",
  "kind": "theorem",
  "lexical_name": "wellFounded_iff_wellFounded_subrel",
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
  "slug": "wellfounded-iff-wellfounded-subrel--d909954edd6ab65ac59db76f",
  "source": {
    "blob": "43d3cf056a9478508f2847e854a8edce3e665034",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 468,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant1dc0263499422048fb455a8f1433827641d48741c9178fab7ffed1d2767275e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d909954edd6ab65ac59db76f87ded8a999dc1866b1d19b220a20ec275e5f458d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant1dc0263499422048fb455a8f1433827641d48741c9178fab7ffed1d2767275e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74d05cc2-7d26-73db-bea6-e428d20445f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wellFounded_iff_wellFounded_subrel {β : Type*} {s : β → β → Prop} [IsTrans β s] :
    WellFounded s ↔ ∀ b, WellFounded (Subrel s { b' | s b' b }) := by
  refine'
    ⟨fun wf b => ⟨fun b' => ((PrincipalSeg.ofElement _ b).acc b').mpr (wf.apply b')⟩, fun wf =>
      ⟨fun b => Acc.intro _ fun b' hb' => _⟩⟩
  let f := PrincipalSeg.ofElement s b
  obtain ⟨b', rfl⟩ := f.down.mp ((PrincipalSeg.ofElement_top s b).symm ▸ hb' : s b' f.top)
  exact (f.acc b').mp ((wf b).apply b')
#align well_founded_iff_well_founded_subrel wellFounded_iff_wellFounded_subrel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant1dc0263499422048fb455a8f1433827641d48741c9178fab7ffed1d2767275e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant1dc0263499422048fb455a8f1433827641d48741c9178fab7ffed1d2767275e3.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43d3cf056a9478508f2847e854a8edce3e665034` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
