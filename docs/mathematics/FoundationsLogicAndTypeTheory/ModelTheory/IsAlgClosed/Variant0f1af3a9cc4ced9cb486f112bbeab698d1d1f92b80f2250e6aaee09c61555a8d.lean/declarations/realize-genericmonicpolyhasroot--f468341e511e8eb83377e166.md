# realize_genericMonicPolyHasRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a76c770-ee09-5caf-e0a1-27f300693cd8",
  "kind": "theorem",
  "lexical_name": "realize_genericMonicPolyHasRoot",
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
  "slug": "realize-genericmonicpolyhasroot--f468341e511e8eb83377e166",
  "source": {
    "blob": "8a59e5c90137fb44a2395ce76c7a110c5ffa22d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f468341e511e8eb83377e166d529214d37f2d53761c0211348c307a743cb6359",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a76c770-ee09-5caf-e0a1-27f300693cd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realize_genericMonicPolyHasRoot [Field K] [CompatibleRing K] (n : ℕ) :
    K ⊨ genericMonicPolyHasRoot n ↔
      ∀ p : { p : K[X] // p.Monic ∧ p.natDegree = n }, ∃ x, p.1.eval x = 0 := by
  rw [Equiv.forall_congr_left ((monicEquivDegreeLT n).trans (degreeLTEquiv K n).toEquiv)]
  simp [Sentence.Realize, genericMonicPolyHasRoot, lift_genericMonicPoly]

/-- The theory of algebraically closed fields of characteristic `p` as a theory over
the language of rings -/
-- Note: `Set` has no computational content, but Lean still attempts to compile it.
-- See https://github.com/leanprover/lean4/issues/14084.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant0f1af3a9cc4ced9cb486f112bbeab698d1d1f92b80f2250e6aaee09c61555a8d.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a59e5c90137fb44a2395ce76c7a110c5ffa22d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
