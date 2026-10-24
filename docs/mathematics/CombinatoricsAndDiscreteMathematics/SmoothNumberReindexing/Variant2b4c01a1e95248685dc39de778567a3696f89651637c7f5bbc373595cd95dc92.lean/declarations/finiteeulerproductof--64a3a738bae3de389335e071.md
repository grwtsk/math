# finiteEulerProductOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d9c508e9252ea80186dc58dd8754110d5738e99c9bd7c73251f312fcb192db4",
  "kind": "def",
  "lexical_name": "finiteEulerProductOf",
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
  "slug": "finiteeulerproductof--64a3a738bae3de389335e071",
  "source": {
    "blob": "5fc4fe772cf350b921139575e4553f55be892a34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64a3a738bae3de389335e071e729e707e8ee30bc21d8d2b83cb5de2ba7362ffc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d9c508e9252ea80186dc58dd8754110d5738e99c9bd7c73251f312fcb192db4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def finiteEulerProductOf
    [CommSemiring R]
    (w : ArithFn R)
    (S : Finset Nat)
    (K : Nat) : R :=
  ∏ p ∈ S, finiteEulerFactorOf w p K

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fc4fe772cf350b921139575e4553f55be892a34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
