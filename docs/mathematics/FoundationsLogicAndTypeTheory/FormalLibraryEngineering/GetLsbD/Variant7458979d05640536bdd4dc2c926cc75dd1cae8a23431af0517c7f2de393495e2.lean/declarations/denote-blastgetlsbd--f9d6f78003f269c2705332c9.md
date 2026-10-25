# denote_blastGetLsbD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74af5b48-79d6-860f-f8c8-8f57b2f6d1a7",
  "kind": "theorem",
  "lexical_name": "denote_blastGetLsbD",
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
  "slug": "denote-blastgetlsbd--f9d6f78003f269c2705332c9",
  "source": {
    "blob": "48bcad36601e85b7ad6efbbb708d0c2815ffe266",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetLsbD/Variant7458979d05640536bdd4dc2c926cc75dd1cae8a23431af0517c7f2de393495e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9d6f78003f269c2705332c99209678c90d3e3c86a3b7aad0671ffcc3912ef7f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetLsbD/Variant7458979d05640536bdd4dc2c926cc75dd1cae8a23431af0517c7f2de393495e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74af5b48-79d6-860f-f8c8-8f57b2f6d1a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_blastGetLsbD (aig : AIG α) (target : GetLsbDTarget aig) (assign : α → Bool) :
    ⟦aig, blastGetLsbD aig target, assign⟧
      =
    if h : target.idx < target.w then
      ⟦aig, target.vec.get target.idx h, assign⟧
    else
      false := by
  rcases target with ⟨expr, idx⟩
  unfold blastGetLsbD
  dsimp only
  split <;> simp

end BVPred

end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetLsbD/Variant7458979d05640536bdd4dc2c926cc75dd1cae8a23431af0517c7f2de393495e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetLsbD/Variant7458979d05640536bdd4dc2c926cc75dd1cae8a23431af0517c7f2de393495e2.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48bcad36601e85b7ad6efbbb708d0c2815ffe266` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
