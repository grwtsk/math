# IsBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6fbce0ff74a2a7f20b3a718a937ec818fd643481a5e6d7113e12a8ac43fe1392",
  "kind": "def",
  "lexical_name": "IsBounded",
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
  "slug": "isbounded--3c7840a0ebf451abf4733922",
  "source": {
    "blob": "af3c6435eb55934a843ce57e4e04074dff7beb2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 220,
    "path": "GRWTSK/Topology/GeneralTopology/WithSeminorms/Variantd5066d8222421a02ab923ebeeee395b86e09a571ac93dd676e361103bd2c960e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c7840a0ebf451abf4733922411f78dec9dfbddf097c5435f2643e4bd83c3fe4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithSeminorms/Variantd5066d8222421a02ab923ebeeee395b86e09a571ac93dd676e361103bd2c960e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6fbce0ff74a2a7f20b3a718a937ec818fd643481a5e6d7113e12a8ac43fe1392`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsBounded (p : ι → Seminorm 𝕜 E) (q : ι' → Seminorm 𝕜₂ F) (f : E →ₛₗ[σ₁₂] F) : Prop :=
  ∀ i, ∃ s : Finset ι, ∃ C : ℝ≥0, (q i).comp f ≤ C • s.sup p

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithSeminorms/Variantd5066d8222421a02ab923ebeeee395b86e09a571ac93dd676e361103bd2c960e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithSeminorms/Variantd5066d8222421a02ab923ebeeee395b86e09a571ac93dd676e361103bd2c960e.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af3c6435eb55934a843ce57e4e04074dff7beb2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
