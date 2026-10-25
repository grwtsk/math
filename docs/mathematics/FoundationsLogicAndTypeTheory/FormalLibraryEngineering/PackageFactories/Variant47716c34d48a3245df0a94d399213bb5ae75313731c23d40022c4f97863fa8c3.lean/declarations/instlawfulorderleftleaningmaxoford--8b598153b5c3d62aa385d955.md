# instLawfulOrderLeftLeaningMaxOfOrd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dcdc9a295888ffb59034f99fffc5568058987e007f76e5b9ef35df957c2db810",
  "kind": "instance",
  "lexical_name": "instLawfulOrderLeftLeaningMaxOfOrd",
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
  "slug": "instlawfulorderleftleaningmaxoford--8b598153b5c3d62aa385d955",
  "source": {
    "blob": "a42524b496ee160e7d70bc76f9f002fa7d80b8cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 715,
    "line": 703,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b598153b5c3d62aa385d95585a3e68162f6c7a737d6badc6f46099302a6dc86",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dcdc9a295888ffb59034f99fffc5568058987e007f76e5b9ef35df957c2db810`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 703–715.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public instance instLawfulOrderLeftLeaningMaxOfOrd {α : Type u} [Ord α] [LE α] [LawfulOrderOrd α] :
    LawfulOrderLeftLeaningMax α where
  max_eq_left a b := by simp +contextual only [← Std.isLE_compare, max, ↑reduceIte, implies_true]
  max_eq_right a b := by
    simp +contextual only [← Std.isLE_compare, max, Bool.false_eq_true, ↑reduceIte, implies_true]

end FactoryInstances

/--
This structure contains all the data needed to create a `LinearOrderPackage α` instance.
Its fields are automatically provided if possible. For the detailed rules how the fields are
inferred, see `LinearOrderPackage.ofOrd`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean#L703).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a42524b496ee160e7d70bc76f9f002fa7d80b8cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
