# mkTargetDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d40d798cb04ad57386707242b5cb07a7828e2d9fe64d0cc52d984dbb82f492f6",
  "kind": "abbrev",
  "lexical_name": "mkTargetDecl",
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
  "slug": "mktargetdecl--9d8b7ed4022b6400873c13dc",
  "source": {
    "blob": "5155f41bb728b07e4d2bc4ffd193195ff2d7737b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 120,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variantf37beb9b96d1f3510153ecd97f1d723f6f824c5c991fe43d870b8e7f0fbdf387.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d8b7ed4022b6400873c13dcc90a1a587b7bc1992b7be8d2838fdf443414fc2b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variantf37beb9b96d1f3510153ecd97f1d723f6f824c5c991fe43d870b8e7f0fbdf387.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d40d798cb04ad57386707242b5cb07a7828e2d9fe64d0cc52d984dbb82f492f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public abbrev mkTargetDecl
  (α) (pkgName «target» : Name)
  [OptDataKind α] [FormatQuery α] [FamilyDef (CustomData pkgName) «target» α]
  (f : NPackage pkgName → FetchM (Job α))
: TargetDecl :=
  let cfg := mkTargetJobConfig fun pkg => do
    withRegisterJob (pkg.target «target» |>.key.toSimpleString) do
      f pkg
  .mk (.mk pkgName «target» .anonymous (.mk cfg) (by simp [Name.isAnonymous_iff_eq_anonymous])) rfl

@[builtin_macro targetCommand]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variantf37beb9b96d1f3510153ecd97f1d723f6f824c5c991fe43d870b8e7f0fbdf387.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variantf37beb9b96d1f3510153ecd97f1d723f6f824c5c991fe43d870b8e7f0fbdf387.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5155f41bb728b07e4d2bc4ffd193195ff2d7737b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
