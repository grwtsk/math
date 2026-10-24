# unitPrism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bb4f2e40d477be138c8caa15dd576b64783d30db58051d6aaf18e09746b5e95",
  "kind": "def",
  "lexical_name": "unitPrism",
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
  "slug": "unitprism--2929e8f69af9d87d40d5076b",
  "source": {
    "blob": "b4009fa1073ea07ec3dd285baeb9273e9c5a4795",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 110,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prism/Variantea3870f24aaed08d38dd536a3b949c6e519a5bdfb4064dbdff5d6b53c4b291e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2929e8f69af9d87d40d5076bdcf26751e361d1fcc0f596b7333a5f2eb5a079e1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prism/Variantea3870f24aaed08d38dd536a3b949c6e519a5bdfb4064dbdff5d6b53c4b291e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bb4f2e40d477be138c8caa15dd576b64783d30db58051d6aaf18e09746b5e95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitPrism (p : Nat) : Prism.{0} p where
  A := unitDeltaRing p
  I := unitIdeal p
  boundary := ["Unit δ-pair example."]
  cartier := {
    cartier := True
    cartierCertified := trivial
    boundary := ["Trivial Cartier certificate for unit example."]
  }
  derived_complete := {
    derivedComplete := True
    derivedCompleteCertified := trivial
    boundary := ["Trivial derived-completion certificate for unit example."]
  }
  frobenius_condition := {
    containsP := True
    containsPCertified := trivial
    boundary := ["Trivial `p ∈ I + φ(I)A` certificate for unit example."]
  }
  prismBoundary := [
    "Unit prism example.",
    "This example is not a nontrivial prismatic comparison theorem."
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prism/Variantea3870f24aaed08d38dd536a3b949c6e519a5bdfb4064dbdff5d6b53c4b291e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prism/Variantea3870f24aaed08d38dd536a3b949c6e519a5bdfb4064dbdff5d6b53c4b291e9.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4009fa1073ea07ec3dd285baeb9273e9c5a4795` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
