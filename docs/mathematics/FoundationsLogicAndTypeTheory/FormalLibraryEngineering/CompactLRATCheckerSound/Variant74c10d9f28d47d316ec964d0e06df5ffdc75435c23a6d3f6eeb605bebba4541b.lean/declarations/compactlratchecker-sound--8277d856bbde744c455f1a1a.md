# compactLratChecker_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf2ec6c0-6ea9-58a7-bd77-6520946f5dc9",
  "kind": "theorem",
  "lexical_name": "compactLratChecker_sound",
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
  "slug": "compactlratchecker-sound--8277d856bbde744c455f1a1a",
  "source": {
    "blob": "e46e535b6030ec8e9c0d1d5a2eedd4ed51241255",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactLRATCheckerSound/Variant74c10d9f28d47d316ec964d0e06df5ffdc75435c23a6d3f6eeb605bebba4541b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8277d856bbde744c455f1a1a47fd012aee7b6e29fc9c9814a68526dc063ab73f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactLRATCheckerSound/Variant74c10d9f28d47d316ec964d0e06df5ffdc75435c23a6d3f6eeb605bebba4541b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf2ec6c0-6ea9-58a7-bd77-6520946f5dc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem compactLratChecker_sound (f : DefaultFormula n) (proof : Array IntAction)
    (h1 : Formula.ReadyForRupAdd f) (h2 : Formula.ReadyForRatAdd f) :
    compactLratChecker f proof = .success → Unsatisfiable (PosFin n) f := by
  apply go_sound <;> assumption

end Internal
end LRAT
end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactLRATCheckerSound/Variant74c10d9f28d47d316ec964d0e06df5ffdc75435c23a6d3f6eeb605bebba4541b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactLRATCheckerSound/Variant74c10d9f28d47d316ec964d0e06df5ffdc75435c23a6d3f6eeb605bebba4541b.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e46e535b6030ec8e9c0d1d5a2eedd4ed51241255` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
