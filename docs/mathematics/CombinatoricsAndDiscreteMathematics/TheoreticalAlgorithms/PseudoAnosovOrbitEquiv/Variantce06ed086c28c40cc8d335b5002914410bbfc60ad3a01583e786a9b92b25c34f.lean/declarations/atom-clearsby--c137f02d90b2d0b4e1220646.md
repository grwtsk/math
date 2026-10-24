# Atom.clearsBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0aab95377176ca70cf9fb236b7e06fc57e321bb845d5f4d92f5080f1c1f74cc4",
  "kind": "def",
  "lexical_name": "Atom.clearsBy",
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
  "slug": "atom-clearsby--c137f02d90b2d0b4e1220646",
  "source": {
    "blob": "c9d276843000c06ef6c8e043bc55f83be529365a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 95,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PseudoAnosovOrbitEquiv/Variantce06ed086c28c40cc8d335b5002914410bbfc60ad3a01583e786a9b92b25c34f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c137f02d90b2d0b4e1220646ace223d7e52fb65a114348a26d49655ad39f3ca5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PseudoAnosovOrbitEquiv/Variantce06ed086c28c40cc8d335b5002914410bbfc60ad3a01583e786a9b92b25c34f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0aab95377176ca70cf9fb236b7e06fc57e321bb845d5f4d92f5080f1c1f74cc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Atom.clearsBy : Atom -> String
  | .transitiveAnosovFlow =>
      "source-compatible Lean predicates for transitive Anosov-style flows"
  | .pseudoAnosovFlow =>
      "formal pseudo-Anosov flow structure and orbit-space data"
  | .closed3Manifold =>
      "Lean manifold and fundamental-group infrastructure for closed 3-manifolds"
  | .freeHomotopyClassSet =>
      "formal P(phi) invariant built from periodic-orbit free homotopy classes"
  | .treeOfScallopedRegions =>
      "formal tree-of-scalloped-regions predicate and absence condition"
  | .signData =>
      "checked sign data and agreement relation for tree orbits"
  | .bifoliatedPlane =>
      "Lean structure for bifoliated planes and ideal-boundary data"
  | .anosovLikeAction =>
      "formal Anosov-like action satisfying the source hypotheses"
  | .orbitEquivalenceClassification =>
      "kernel-checked proof of the classification theorem with all hypotheses exposed"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PseudoAnosovOrbitEquiv/Variantce06ed086c28c40cc8d335b5002914410bbfc60ad3a01583e786a9b92b25c34f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PseudoAnosovOrbitEquiv/Variantce06ed086c28c40cc8d335b5002914410bbfc60ad3a01583e786a9b92b25c34f.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9d276843000c06ef6c8e043bc55f83be529365a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
