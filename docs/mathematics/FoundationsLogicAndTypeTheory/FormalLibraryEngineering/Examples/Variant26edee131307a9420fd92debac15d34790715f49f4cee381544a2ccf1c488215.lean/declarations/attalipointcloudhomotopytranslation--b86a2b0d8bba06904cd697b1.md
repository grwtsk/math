# attaliPointCloudHomotopyTranslation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:beb43dda5f0288445cc97eef6fea9d1acd38351335eb931633f24228a0d6b301",
  "kind": "def",
  "lexical_name": "attaliPointCloudHomotopyTranslation",
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
  "slug": "attalipointcloudhomotopytranslation--b86a2b0d8bba06904cd697b1",
  "source": {
    "blob": "bfe230e48b45e9ec78a4d1a244908dd9c376aa25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 596,
    "line": 582,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant26edee131307a9420fd92debac15d34790715f49f4cee381544a2ccf1c488215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b86a2b0d8bba06904cd697b1136b24ece0ce7c29f9c6d4308eec00309ffd20fe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant26edee131307a9420fd92debac15d34790715f49f4cee381544a2ccf1c488215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:beb43dda5f0288445cc97eef6fea9d1acd38351335eb931633f24228a0d6b301`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 582–596.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def attaliPointCloudHomotopyTranslation : LiteratureTranslationRecord :=
  capabilityLiteratureTranslation "SFS-LIT-RECON-ATTALI"
    (arxivLiteratureArtifact
      "Dominique Attali et al., Tight bounds for the learning of homotopy à la Niyogi, Smale, and Weinberger, arXiv:2206.10485v4"
      "3a9682f8fc554f99a95b2a07bd8400304ee096dfccaa67424ae59af50026f19f")
    "positive-reach reconstruction with two one-sided sample errors"
    "point-cloud-reconstruction-capability"
    "Surface.SmoothFramedSurgery.PointCloudReconstructionCapability"
    ["reach lower bound", "coverage and noise are separate",
      "an explicit admissible reconstruction scale"]
    ["homotopy recovery is strengthened to separate manifold/core/framing/exterior/collar targets only as an assumed capability"]
    ["formalize the union-of-balls deformation retraction",
      "prove that surgery feature-separation hypotheses recover framing, exterior, and collar data"]

/-- García Trillos et al. motivates random-geometric-graph spectral error data. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant26edee131307a9420fd92debac15d34790715f49f4cee381544a2ccf1c488215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant26edee131307a9420fd92debac15d34790715f49f4cee381544a2ccf1c488215.lean#L582).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfe230e48b45e9ec78a4d1a244908dd9c376aa25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
