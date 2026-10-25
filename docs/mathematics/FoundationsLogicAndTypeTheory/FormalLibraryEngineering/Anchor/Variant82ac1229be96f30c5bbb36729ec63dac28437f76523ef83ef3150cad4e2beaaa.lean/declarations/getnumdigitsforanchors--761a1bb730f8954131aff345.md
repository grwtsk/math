# getNumDigitsForAnchors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c58c2083a57bfc7a06d75e2dea113c79c802822c99dc7b4794024dae31e186ad",
  "kind": "def",
  "lexical_name": "getNumDigitsForAnchors",
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
  "slug": "getnumdigitsforanchors--761a1bb730f8954131aff345",
  "source": {
    "blob": "b3c62c9e1417fd34723792d25f468eed43d98872",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:761a1bb730f8954131aff3456840819cb51ac431eb1877d60a089ca50bf61b22",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c58c2083a57bfc7a06d75e2dea113c79c802822c99dc7b4794024dae31e186ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def getNumDigitsForAnchors [HasAnchor α] (es : Array α) : Nat :=
  go 4
where
  go (numDigits : Nat) : Nat := Id.run do
    if 4*numDigits  < 64 then
      let shift := 64 - 4*numDigits
      let mut found : Std.HashMap UInt64 UInt64 := {}
      for e in es do
        let a := HasAnchor.getAnchor e
        let a' := a >>> shift.toUInt64
        if let some b := found[a']? then
          -- **Note**: if the full anchors are equal, expanding the number of digits does not help.
          if b != a then
            return (← go (numDigits+1))
        else
          found  := found.insert a' a
      return numDigits
    else
      return numDigits
  termination_by 64 - 4*numDigits

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3c62c9e1417fd34723792d25f468eed43d98872` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
