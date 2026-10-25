# LeanLib.recBuildExtraDepTargets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21378769457f32e22912d045ad9fab48147f3868b593147a60637c0d90515b5d",
  "kind": "def",
  "lexical_name": "LeanLib.recBuildExtraDepTargets",
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
  "slug": "leanlib-recbuildextradeptargets--8366bdddff0d8a5c3c522a11",
  "source": {
    "blob": "43c42349f566ae98b6ab53a22c58dd38c53b7e08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8366bdddff0d8a5c3c522a11d6332bcc676cf5e6c64dcc0374e1605842046a07",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21378769457f32e22912d045ad9fab48147f3868b593147a60637c0d90515b5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LeanLib.recBuildExtraDepTargets (self : LeanLib) : FetchM (Job Unit) := do
  let mut job := Job.nil s!"{self.pkg.baseName}/{self.name}:extraDep"
  job := job.mix (← self.pkg.extraDep.fetch)
  for target in self.extraDepTargets do
    job := job.mix (← self.pkg.fetchTargetJob target)
  for key in self.config.needs do
    job := job.mix (← key.fetchIn self.pkg)
  return job

/-- The `LibraryFacetConfig` for the builtin `extraDepFacet`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43c42349f566ae98b6ab53a22c58dd38c53b7e08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
