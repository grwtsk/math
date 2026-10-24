# comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:892c04d5-df06-f464-147a-da60b608ebaa",
  "kind": "theorem",
  "lexical_name": "comap",
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
  "slug": "comap--9fb382095c2d6a85dc69ffdc",
  "source": {
    "blob": "d68f2322b517fbb6aa60440d4f985a17ee7626d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 81,
    "path": "GRWTSK/Algebra/GroupTheory/FinitelyPresentedGroup/Variant9673cdd488c6c773d5878a0aedbed758ba32470e138333fb9493edfe9070f9a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fb382095c2d6a85dc69ffdc992a9440720fd41759c0b780623c11c5b0a664a5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FinitelyPresentedGroup/Variant9673cdd488c6c773d5878a0aedbed758ba32470e138333fb9493edfe9070f9a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:892c04d5-df06-f464-147a-da60b608ebaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem comap {N : Subgroup H} (hN : N.IsFinitelyNormallyGenerated)
    {f : G →* H} (hf : Surjective f) (hf' : f.ker.IsFinitelyNormallyGenerated) :
    (N.comap f).IsFinitelyNormallyGenerated := by
  obtain ⟨S, hS_fin, hS⟩ := hN
  obtain ⟨T, hT_fin, hT⟩ := hf'
  have : ∃ S', S'.Finite ∧ f '' S' = S :=
    ⟨surjInv hf '' S, hS_fin.image _, by rw [← image_comp, comp_surjInv, image_id]⟩
  clear hS_fin
  obtain ⟨S, hS_fin, rfl⟩ := this
  refine ⟨S ∪ T, hS_fin.union hT_fin, ?_⟩
  rw [← hS, ← map_normalClosure S f hf, comap_map_eq, ← hT, normalClosure_union]

/-- The trivial group is the normal closure of a finite set of relations. -/
@[to_additive /-- The trivial additive group is the normal closure of a finite set of relations. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FinitelyPresentedGroup/Variant9673cdd488c6c773d5878a0aedbed758ba32470e138333fb9493edfe9070f9a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FinitelyPresentedGroup/Variant9673cdd488c6c773d5878a0aedbed758ba32470e138333fb9493edfe9070f9a5.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d68f2322b517fbb6aa60440d4f985a17ee7626d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
