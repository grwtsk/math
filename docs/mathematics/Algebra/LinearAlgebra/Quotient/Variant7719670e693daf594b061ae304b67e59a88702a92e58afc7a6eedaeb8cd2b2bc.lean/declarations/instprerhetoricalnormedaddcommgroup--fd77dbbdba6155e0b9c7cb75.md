# instPreRhetoricalNormedAddCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c61818bea3c458b4b5d8e36b79ca7d491a99a1b876060999d02a11bc607ca378",
  "kind": "instance",
  "lexical_name": "instPreRhetoricalNormedAddCommGroup",
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
  "slug": "instprerhetoricalnormedaddcommgroup--fd77dbbdba6155e0b9c7cb75",
  "source": {
    "blob": "061e6117570d6d49e64717a4ca31b2b960e7facc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 126,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd77dbbdba6155e0b9c7cb75c8695e322da02baa448a56690d14260c9047def2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c61818bea3c458b4b5d8e36b79ca7d491a99a1b876060999d02a11bc607ca378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instPreRhetoricalNormedAddCommGroup :
    NormedAddCommGroup (PreRhetoricalSpace kernel) :=
  @InnerProductSpace.Core.toNormedAddCommGroup
    ℂ (PreRhetoricalSpace kernel) _ _ _ (preRhetoricalCore kernel)

/-- The quotient, unlike the raw semidefinite span, is a genuine complex
inner-product space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `061e6117570d6d49e64717a4ca31b2b960e7facc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
