# exists_mulEquiv_presentedGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3440cc3-5fd5-59a6-8ddb-2688e356ae94",
  "kind": "theorem",
  "lexical_name": "exists_mulEquiv_presentedGroup",
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
  "slug": "exists-mulequiv-presentedgroup--1bf3307bf117a0c844d23b3a",
  "source": {
    "blob": "d68f2322b517fbb6aa60440d4f985a17ee7626d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 146,
    "path": "GRWTSK/Algebra/GroupTheory/FinitelyPresentedGroup/Variant9673cdd488c6c773d5878a0aedbed758ba32470e138333fb9493edfe9070f9a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bf3307bf117a0c844d23b3afdd40e8493bae65ecd037631cd338d119cbf3c18",
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

Occurrence: `result:a3440cc3-5fd5-59a6-8ddb-2688e356ae94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mulEquiv_presentedGroup [hg : IsFinitelyPresented G] :
    ∃ n : ℕ, ∃ s : Set (FreeGroup (Fin n)), Set.Finite s ∧ Nonempty (G ≃* PresentedGroup s) := by
  obtain ⟨n, φ, hφ, s, hs, hsφ⟩ := hg
  exact ⟨n, s, hs, ⟨(quotientKerEquivOfSurjective φ hφ).symm.trans (quotientMulEquivOfEq hsφ.symm)⟩⟩

/-- A free group with a finite number of generators is finitely presented. -/
@[to_additive /-- A free additive group with a finite number of generators is finitely presented. -/
]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FinitelyPresentedGroup/Variant9673cdd488c6c773d5878a0aedbed758ba32470e138333fb9493edfe9070f9a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FinitelyPresentedGroup/Variant9673cdd488c6c773d5878a0aedbed758ba32470e138333fb9493edfe9070f9a5.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d68f2322b517fbb6aa60440d4f985a17ee7626d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
