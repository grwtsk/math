# applicableByTargetRules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7d2a4c22e30ef914f123229bbd8825781e69cd059fbc0c767efe0e395cb3f86",
  "kind": "def",
  "lexical_name": "applicableByTargetRules",
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
  "slug": "applicablebytargetrules--fc39862a2ab20b4fae50de7c",
  "source": {
    "blob": "58087062148eeecae6c04a72f0d8a7d7845cdfac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Index/Varianta6abdfb91d6eeeb2e14b850a8f094f49f508403d4057ac51cd1323cb7692b8b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc39862a2ab20b4fae50de7c984dec815094d8ca1881db36c41d360392d2fa93",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Index/Varianta6abdfb91d6eeeb2e14b850a8f094f49f508403d4057ac51cd1323cb7692b8b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7d2a4c22e30ef914f123229bbd8825781e69cd059fbc0c767efe0e395cb3f86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def applicableByTargetRules (ri : Index α) (goal : MVarId)
    (include? : Rule α → Bool) :
    MetaM (Array (Rule α × Array IndexMatchLocation)) :=
  goal.withContext do
    let rules ← getUnify ri.byTarget (← goal.getType)
    let mut rs := Array.mkEmpty rules.size
      -- Assumption: include? is true for most rules.
    for r in rules do
      if include? r then
        rs := rs.push (r, #[.target])
    return rs

-- May return duplicate `IndexMatchLocation`s.
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Index/Varianta6abdfb91d6eeeb2e14b850a8f094f49f508403d4057ac51cd1323cb7692b8b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Index/Varianta6abdfb91d6eeeb2e14b850a8f094f49f508403d4057ac51cd1323cb7692b8b1.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58087062148eeecae6c04a72f0d8a7d7845cdfac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
