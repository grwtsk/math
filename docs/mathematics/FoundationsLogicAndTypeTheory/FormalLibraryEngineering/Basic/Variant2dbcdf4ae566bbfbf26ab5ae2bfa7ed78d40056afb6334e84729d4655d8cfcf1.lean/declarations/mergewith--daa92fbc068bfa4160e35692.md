# mergeWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f603de06c7a0b00659f06c32bd0d17aa770fa72d95acf788363d4f057dae0370",
  "kind": "def",
  "lexical_name": "mergeWith",
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
  "slug": "mergewith--daa92fbc068bfa4160e35692",
  "source": {
    "blob": "61b9f6c98cfab57ece20d2fab1d02b364a2fffa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 863,
    "line": 857,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2dbcdf4ae566bbfbf26ab5ae2bfa7ed78d40056afb6334e84729d4655d8cfcf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:daa92fbc068bfa4160e356922e2f05eb7b7e1a2aa7c51850cfe3e2167b7c3381",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2dbcdf4ae566bbfbf26ab5ae2bfa7ed78d40056afb6334e84729d4655d8cfcf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f603de06c7a0b00659f06c32bd0d17aa770fa72d95acf788363d4f057dae0370`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 857–863.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mergeWith [TransCmp cmp] (mergeFn : α → β → β → β) (t₁ t₂ : ExtDTreeMap α β cmp) : ExtDTreeMap α β cmp :=
  t₁.liftOn₂ t₂ (fun m₁ m₂ => mk (DTreeMap.Const.mergeWith mergeFn m₁ m₂))
    (fun _ _ _ _ h₁ h₂ => sound (h₁.constMergeWith mergeFn h₂))

end Const

@[inline, inherit_doc DTreeMap.insertMany]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2dbcdf4ae566bbfbf26ab5ae2bfa7ed78d40056afb6334e84729d4655d8cfcf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2dbcdf4ae566bbfbf26ab5ae2bfa7ed78d40056afb6334e84729d4655d8cfcf1.lean#L857).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61b9f6c98cfab57ece20d2fab1d02b364a2fffa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
