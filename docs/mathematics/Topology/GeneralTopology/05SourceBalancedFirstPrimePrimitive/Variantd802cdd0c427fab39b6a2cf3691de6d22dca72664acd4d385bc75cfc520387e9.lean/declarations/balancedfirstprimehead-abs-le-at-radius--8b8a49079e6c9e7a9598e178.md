# balancedFirstPrimeHead_abs_le_at_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfcc1844-b824-15ce-3c5c-d06bdd5856dc",
  "kind": "theorem",
  "lexical_name": "balancedFirstPrimeHead_abs_le_at_radius",
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
  "slug": "balancedfirstprimehead-abs-le-at-radius--8b8a49079e6c9e7a9598e178",
  "source": {
    "blob": "5ea59110bd557f722c2c4626699819be2d9bb4d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 241,
    "path": "GRWTSK/Topology/GeneralTopology/05SourceBalancedFirstPrimePrimitive/Variantd802cdd0c427fab39b6a2cf3691de6d22dca72664acd4d385bc75cfc520387e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b8a49079e6c9e7a9598e17863e0fe1931ba705b1a8fd1df9c41e70bf2580ebe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/05SourceBalancedFirstPrimePrimitive/Variantd802cdd0c427fab39b6a2cf3691de6d22dca72664acd4d385bc75cfc520387e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfcc1844-b824-15ce-3c5c-d06bdd5856dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balancedFirstPrimeHead_abs_le_at_radius {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    |balancedFirstPrimeHead A| ≤ 20 * Real.log Q / Q := by
  have h := mul_le_mul_of_nonneg_left (log_div_antitone hQ hQA)
    (by norm_num : (0 : ℝ) ≤ 20)
  exact (balancedFirstPrimeHead_abs_le (by linarith : 91 ≤ A)).trans
    (by simpa only [mul_div_assoc] using h)

end RH16BalancedFirstPrimePrimitive
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/05SourceBalancedFirstPrimePrimitive/Variantd802cdd0c427fab39b6a2cf3691de6d22dca72664acd4d385bc75cfc520387e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/05SourceBalancedFirstPrimePrimitive/Variantd802cdd0c427fab39b6a2cf3691de6d22dca72664acd4d385bc75cfc520387e9.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ea59110bd557f722c2c4626699819be2d9bb4d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
