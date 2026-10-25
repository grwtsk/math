# fixtureSubsetExpectedGram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab6bb03dab5b5aeb324ce68cf2f673767170a5062be0ad0ba00fca145a92baaa",
  "kind": "def",
  "lexical_name": "fixtureSubsetExpectedGram",
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
  "slug": "fixturesubsetexpectedgram--666de17ef1e31091af2cd215",
  "source": {
    "blob": "2e2786c73b4d66ce360894cb5f69bd7d58311eea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 365,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RhetoricalHilbert/Variantf70b174ac7a3b36799e037734d3ff4b2d63faaad34e1259d517d0ba4b176fa07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:666de17ef1e31091af2cd2150eaeb938271a936131e157b2844ec1db183e3527",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RhetoricalHilbert/Variantf70b174ac7a3b36799e037734d3ff4b2d63faaad34e1259d517d0ba4b176fa07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab6bb03dab5b5aeb324ce68cf2f673767170a5062be0ad0ba00fca145a92baaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fixtureSubsetExpectedGram : ExactGram where
  dimension := 2
  entries := [
    fixtureExpectedEntry
      (KernelManifest.productionActiveBinding (liftSubsetPosition 0))
      (KernelManifest.productionActiveBinding (liftSubsetPosition 0)),
    fixtureExpectedEntry
      (KernelManifest.productionActiveBinding (liftSubsetPosition 0))
      (KernelManifest.productionActiveBinding (liftSubsetPosition 1)),
    fixtureExpectedEntry
      (KernelManifest.productionActiveBinding (liftSubsetPosition 1))
      (KernelManifest.productionActiveBinding (liftSubsetPosition 0)),
    fixtureExpectedEntry
      (KernelManifest.productionActiveBinding (liftSubsetPosition 1))
      (KernelManifest.productionActiveBinding (liftSubsetPosition 1))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RhetoricalHilbert/Variantf70b174ac7a3b36799e037734d3ff4b2d63faaad34e1259d517d0ba4b176fa07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RhetoricalHilbert/Variantf70b174ac7a3b36799e037734d3ff4b2d63faaad34e1259d517d0ba4b176fa07.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e2786c73b4d66ce360894cb5f69bd7d58311eea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
