# frame_target_sorted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08cfa643-9a9b-91e8-d8d3-2ff5b344e43e",
  "kind": "theorem",
  "lexical_name": "frame_target_sorted",
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
  "slug": "frame-target-sorted--ee4dfc1594e507dcc76302cb",
  "source": {
    "blob": "b49bdf1d96b82d3ee567ac2ee57a35985cc99518",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 756,
    "line": 742,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variant57cb3adb164f64c031260385b6c27b793cb35cb2b6c6d7fa76ab831c9e9eaecd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee4dfc1594e507dcc76302cb6205ba99f54b9c5fc1dd30d49b3f9389c1afaa31",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variant57cb3adb164f64c031260385b6c27b793cb35cb2b6c6d7fa76ab831c9e9eaecd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08cfa643-9a9b-91e8-d8d3-2ff5b344e43e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 742–756.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frame_target_sorted {A B q : Expr S} {s : S}
    (hT : Ω.HasType (.pi A B) (.sort s)) (hq : Ω.HasType q A) :
    ∃ b, Ω.HasType (B.instantiate q) (.sort b) := by
  obtain ⟨n, hT, hq⟩ := hT.common hq
  obtain ⟨a, b, c, _, hB, _, _⟩ := hT.generation_pi
  refine ⟨b, n, ?_⟩
  have h := hB.instantiate hq
  change PureTypeSystem.HasType P (Ω.context n)
    ((B.rename (Expr.liftRen (Expr.reverseIndex n))).instantiate (q.rename (Expr.reverseIndex n)))
    (.sort b) at h
  rw [Expr.instantiate_rename] at h
  exact h

open Classical in
/-- Global form of the source strict target-potential inequality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variant57cb3adb164f64c031260385b6c27b793cb35cb2b6c6d7fa76ab831c9e9eaecd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variant57cb3adb164f64c031260385b6c27b793cb35cb2b6c6d7fa76ab831c9e9eaecd.lean#L742).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b49bdf1d96b82d3ee567ac2ee57a35985cc99518` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
