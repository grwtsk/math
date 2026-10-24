# scaled_affine_step_preserves_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2961299747ab39c3d97c068d227855c86e41220",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29c3940c8bea68fba8a43b58dc9dbf0be6cfff9bc88cf0ec796ae5ca8664b239.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e681e639-07b6-26d8-3d39-70b0ca9bc6ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc666abb-a605-be8d-84c0-75ae3be6775b",
  "kind": "theorem",
  "lexical_name": "scaled_affine_step_preserves_bound",
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
  "slug": "scaled-affine-step-preserves-bound--5a191ba4a7b572561b6ab735",
  "source": {
    "blob": "a2961299747ab39c3d97c068d227855c86e41220",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 86,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variant29c3940c8bea68fba8a43b58dc9dbf0be6cfff9bc88cf0ec796ae5ca8664b239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a191ba4a7b572561b6ab735dc6f4dc7a22497e7b2bca5f81d648d6fabb9985b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variant29c3940c8bea68fba8a43b58dc9dbf0be6cfff9bc88cf0ec796ae5ca8664b239.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc666abb-a605-be8d-84c0-75ae3be6775b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaled_affine_step_preserves_bound
    (gain : ScaledGain)
    (localDefect incoming outgoing : Nat)
    (incomingBound : FractionBound)
    (incomingCertified : SatisfiesBound incoming incomingBound)
    (stepCertified :
      SatisfiesScaledAffineStep gain localDefect incoming outgoing) :
    SatisfiesBound outgoing
      (scaledAffineStep gain localDefect incomingBound) := by
  unfold SatisfiesBound scaledAffineStep
  calc
    (gain.scale * incomingBound.denominator) * outgoing =
        incomingBound.denominator * (gain.scale * outgoing) := by
          simp [Nat.mul_comm, Nat.mul_left_comm]
    _ ≤ incomingBound.denominator *
        (gain.numerator * incoming + gain.scale * localDefect) :=
      Nat.mul_le_mul_left incomingBound.denominator stepCertified
    _ = gain.numerator * (incomingBound.denominator * incoming) +
        gain.scale * incomingBound.denominator * localDefect := by
          simp [Nat.mul_add, Nat.mul_comm, Nat.mul_left_comm]
    _ ≤ gain.numerator * incomingBound.numerator +
        gain.scale * incomingBound.denominator * localDefect :=
      Nat.add_le_add_right
        (Nat.mul_le_mul_left gain.numerator incomingCertified)
        (gain.scale * incomingBound.denominator * localDefect)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variant29c3940c8bea68fba8a43b58dc9dbf0be6cfff9bc88cf0ec796ae5ca8664b239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variant29c3940c8bea68fba8a43b58dc9dbf0be6cfff9bc88cf0ec796ae5ca8664b239.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2961299747ab39c3d97c068d227855c86e41220` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
