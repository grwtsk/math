# unitPrismaticEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb834a27e4f9314a5f68de3601470732d681cb407b9a9f2df8dd1bf63c505c9c",
  "kind": "def",
  "lexical_name": "unitPrismaticEnvelope",
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
  "slug": "unitprismaticenvelope--84436cd0f8e512cab7bd6c6d",
  "source": {
    "blob": "43143711c61656d40aaade15d215331b4b650dde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 195,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Envelope/Variant572ed17746dd3ba8cc46ecbd7c41af115fdd0eefbf98950f0eb5becaadb89c4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84436cd0f8e512cab7bd6c6d079d49dd65b732dfe00c6dae2ed606be426d452d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Envelope/Variant572ed17746dd3ba8cc46ecbd7c41af115fdd0eefbf98950f0eb5becaadb89c4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb834a27e4f9314a5f68de3601470732d681cb407b9a9f2df8dd1bf63c505c9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitPrismaticEnvelope
    (p : Nat) :
    PrismaticEnvelope (unitPrism p) where
  idealLabel := "unit ideal"
  envelopePair := {
    A := (unitPrism p).A
    I := (unitPrism p).I
    boundary := ["Unit envelope δ-pair."]
  }
  universalProperty := True
  universalPropertyCertified := trivial
  p_I_completelyFlat := True
  pICompletelyFlatCertified := trivial
  boundary := [
    "Unit prismatic-envelope example.",
    "This is a toy certificate, not a nontrivial prismatic-envelope theorem."
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Envelope/Variant572ed17746dd3ba8cc46ecbd7c41af115fdd0eefbf98950f0eb5becaadb89c4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Envelope/Variant572ed17746dd3ba8cc46ecbd7c41af115fdd0eefbf98950f0eb5becaadb89c4b.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43143711c61656d40aaade15d215331b4b650dde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
