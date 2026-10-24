# nonsingular_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6ba9a89-d4ac-aa6b-27b4-a500af24d920",
  "kind": "lemma",
  "lexical_name": "nonsingular_add",
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
  "slug": "nonsingular-add--cbcde7e8b1a7c76d11354490",
  "source": {
    "blob": "e7b67734d608785a00d88534c3c239e7a79cd2f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 644,
    "line": 633,
    "path": "GRWTSK/Algebra/Point/Variant3205093d013c1f9bb2ae64d25f5335c4ba6310ac23771293a961500903104376.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbcde7e8b1a7c76d11354490da7b862e106dce4faa2c2e1c8b8326e1b7b333f7",
  "verification": {
    "reference": "docs/verification/Algebra/Point/Variant3205093d013c1f9bb2ae64d25f5335c4ba6310ac23771293a961500903104376.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6ba9a89-d4ac-aa6b-27b4-a500af24d920`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 633–644.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nonsingular_add (hxy : x₁ = x₂ → y₁ ≠ W.negY x₂ y₂) :
    W.nonsingular (W.addX x₁ x₂ <| W.slope x₁ x₂ y₁ y₂) (W.addY x₁ x₂ y₁ <| W.slope x₁ x₂ y₁ y₂) :=
  nonsingular_neg <| nonsingular_add' h₁ h₂ hxy
#align weierstrass_curve.nonsingular_add WeierstrassCurve.nonsingular_add

namespace Point

variable {h₁ h₂}

/-- The addition of two nonsingular rational points.

Given two nonsingular rational points `P` and `Q`, use `P + Q` instead of `add P Q`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Point/Variant3205093d013c1f9bb2ae64d25f5335c4ba6310ac23771293a961500903104376.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Point/Variant3205093d013c1f9bb2ae64d25f5335c4ba6310ac23771293a961500903104376.lean#L633).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7b67734d608785a00d88534c3c239e7a79cd2f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
