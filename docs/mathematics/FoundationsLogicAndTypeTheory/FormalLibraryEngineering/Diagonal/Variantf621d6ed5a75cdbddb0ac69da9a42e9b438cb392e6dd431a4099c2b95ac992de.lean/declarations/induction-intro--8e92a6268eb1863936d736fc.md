# induction_intro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bc22c80-dd21-b511-0e48-4e26e220a683",
  "kind": "theorem",
  "lexical_name": "induction_intro",
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
  "slug": "induction-intro--8e92a6268eb1863936d736fc",
  "source": {
    "blob": "712c86afd17675d2ac360e778368bbff3fb96d4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1730,
    "line": 1718,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantf621d6ed5a75cdbddb0ac69da9a42e9b438cb392e6dd431a4099c2b95ac992de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e92a6268eb1863936d736fcecea0807f2c313e22a8024e5d7dd9b666cd1dd98",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantf621d6ed5a75cdbddb0ac69da9a42e9b438cb392e6dd431a4099c2b95ac992de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bc22c80-dd21-b511-0e48-4e26e220a683`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1718–1730.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_intro {i : Expr S}
    (hi : HasType P Γ i B.xPredType) (mi : WellModed γ i .data)
    (hh : ∀ Δ δ (e : Embedding P Γ γ Δ δ) x,
      HasType P Δ x (B.rename e.names).xType → WellModed δ x .data →
      Proves P Δ δ ((B.rename e.names).indStep (L.code.rename e.names) (KY.code.rename
        e.names) (KP.code.rename e.names)
        (i.rename e.names) x)) : Proves P Γ γ (B.induction L.code KY.code KP.code i) := by
  obtain ⟨s,hs⟩ := KY.triple.domain.1
  apply L.all_intro_future KY H.x_sorted H.x_mode (H.x_sorted s hs) (H.indBody_family KY KP hi mi)
  intro Δ δ e x hx mx
  rw [indBody_rename,indBody_instantiate]
  exact hh Δ δ e x (by simpa only [xType_rename] using hx) mx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantf621d6ed5a75cdbddb0ac69da9a42e9b438cb392e6dd431a4099c2b95ac992de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantf621d6ed5a75cdbddb0ac69da9a42e9b438cb392e6dd431a4099c2b95ac992de.lean#L1718).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `712c86afd17675d2ac360e778368bbff3fb96d4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
