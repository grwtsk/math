# resolveCooperDiseq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:847bd609cfb2ea79eb62075ec1479980f6293661b494ad400459d0eb669147f2",
  "kind": "def",
  "lexical_name": "resolveCooperDiseq",
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
  "slug": "resolvecooperdiseq--7993934caea585c2c2d24a13",
  "source": {
    "blob": "406b2fd17976e810aa68e4962d194e597daaf13f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 357,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7993934caea585c2c2d24a138bdf95533208464f9b04021f025d8db0012d3ad2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:847bd609cfb2ea79eb62075ec1479980f6293661b494ad400459d0eb669147f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resolveCooperDiseq (c₁ : DiseqCnstr) (c₂ : LeCnstr) (c₃? : Option DvdCnstr) : SearchM Unit := do
  -- Ensure the coefficient is positive
  let c₁ := if c₁.p.leadCoeff > 0 then
    { p := c₁.p.mul (-1), h := .neg c₁ : DiseqCnstr }
  else
    c₁
  let c₁ ← c₁.split
  -- After the `c₁.split`, the real shadow may resolve the conflict
  if (← resolveRealLowerUpperConflict c₁ c₂) then
    return ()
  if let some c₃ := c₃? then
    resolveCooperDvd c₁ c₂ c₃
  else
    resolveCooper c₁ c₂

/--
Given `c₁` of the form `-a₁*x + p₁ ≤ 0`, and `c` of the form `b*x + p ≠ 0`,
splits `c` and resolve with `c₁`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `406b2fd17976e810aa68e4962d194e597daaf13f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
