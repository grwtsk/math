# InvocationCut

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33631ac7bf75ddae854aef2dc1b6b97b732f7dea9560790b79b5fd8b72e5773b",
  "kind": "structure",
  "lexical_name": "InvocationCut",
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
  "slug": "invocationcut--7abebd50ca5164b8d84d9e9d",
  "source": {
    "blob": "17668919c2285d20cf62afd8d93e8be694cebdfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 15,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cut/Variantbcd273c5bf0c84b808788ae6fdc4a1faba9217ffcd606a67f90604706bb0fffc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7abebd50ca5164b8d84d9e9d438828232e7e6d42d0e9e04b78e925dd92d3eee9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Cut/Variantbcd273c5bf0c84b808788ae6fdc4a1faba9217ffcd606a67f90604706bb0fffc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33631ac7bf75ddae854aef2dc1b6b97b732f7dea9560790b79b5fd8b72e5773b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InvocationCut
    (Obligation : Type u)
    (Proof : Type v)
    (Event : Type w)
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event] where
  snapshotDigest : String
  graphDigest : String
  instanceDigest : String
  authorityDigest : String
  obligations : Finset Obligation
  proofRegistry : Obligation → Finset Proof
  events : Finset Event
  canonicalize : Event → Obligation
  seed : Obligation → Event
  seed_mem :
    ∀ obligation ∈ obligations, seed obligation ∈ events
  seed_target :
    ∀ obligation ∈ obligations,
      canonicalize (seed obligation) = obligation
  overflowPolicy : OverflowPolicy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Cut/Variantbcd273c5bf0c84b808788ae6fdc4a1faba9217ffcd606a67f90604706bb0fffc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Cut/Variantbcd273c5bf0c84b808788ae6fdc4a1faba9217ffcd606a67f90604706bb0fffc.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17668919c2285d20cf62afd8d93e8be694cebdfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
