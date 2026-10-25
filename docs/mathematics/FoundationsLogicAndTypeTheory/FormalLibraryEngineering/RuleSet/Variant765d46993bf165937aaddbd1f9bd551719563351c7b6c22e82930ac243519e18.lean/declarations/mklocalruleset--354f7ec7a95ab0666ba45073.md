# mkLocalRuleSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6d04cd3fb52557a204de73c7af59561f8c65914aafac54debac19396e7d2519",
  "kind": "def",
  "lexical_name": "mkLocalRuleSet",
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
  "slug": "mklocalruleset--354f7ec7a95ab0666ba45073",
  "source": {
    "blob": "aded577a0dad76b7a413b1a75ca6231b31d23e0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 628,
    "line": 592,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:354f7ec7a95ab0666ba45073db5c4860deb993a653ed4127d42cc06cb7e7d14d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6d04cd3fb52557a204de73c7af59561f8c65914aafac54debac19396e7d2519`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 592–628.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkLocalRuleSet (rss : Array (GlobalRuleSet × Name × Name))
    (options : Options') : CoreM LocalRuleSet := do
  let mut result := ∅
  let simpTheorems ← getSimpTheorems
  let simprocs ← Simp.getSimprocs
  result := {
    toBaseRuleSet := ∅
    simpTheoremsArray :=
      if options.useDefaultSimpSet then
        Array.mkEmpty (rss.size + 1) |>.push (`_, simpTheorems)
      else
        Array.mkEmpty (rss.size + 1) |>.push (`_, {})
    simprocsArray :=
      if options.useDefaultSimpSet then
        Array.mkEmpty (rss.size + 1) |>.push (`_, simprocs)
      else
        Array.mkEmpty (rss.size + 1) |>.push ((`_, {}))
    simpTheoremsArrayNonempty := by split <;> simp
    simprocsArrayNonempty := by split <;> simp
    localNormSimpRules := ∅
  }
  for (rs, simpExtName, simprocExtName) in rss do
    result := { result with
      toBaseRuleSet := result.toBaseRuleSet.merge rs.toBaseRuleSet
      simpTheoremsArray :=
        result.simpTheoremsArray.push (simpExtName, rs.simpTheorems)
      simpTheoremsArrayNonempty := by simp
      simprocsArray :=
        result.simprocsArray.push (simprocExtName, rs.simprocs)
      simprocsArrayNonempty := by simp
    }
  if let some p := unindexPredicate? options then
    return result.unindex p
  else
    return result

end Aesop
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean#L592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aded577a0dad76b7a413b1a75ca6231b31d23e0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
