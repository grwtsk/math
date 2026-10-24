# inv_le_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:507c1983-f700-af50-92cc-0876b5e4e15c",
  "kind": "lemma",
  "lexical_name": "inv_le_inv",
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
  "slug": "inv-le-inv--d094300de7dfed618e83113f",
  "source": {
    "blob": "ecb8aff199709e4025859741470e658246b3f3b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 333,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d094300de7dfed618e83113f8d318186c74ed50b906818816dac7eb23f1528f7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:507c1983-f700-af50-92cc-0876b5e4e15c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma inv_le_inv {a b : Aˣ} (ha : 0 ≤ (a : A))
    (hab : (a : A) ≤ b) : (↑b⁻¹ : A) ≤ a⁻¹ := by
  have hb := ha.trans hab
  have hb_inv : (0 : A) ≤ b⁻¹ := inv_nonneg_of_nonneg b hb
  have ha_inv : (0 : A) ≤ a⁻¹ := inv_nonneg_of_nonneg a ha
  rw [le_iff_norm_sqrt_mul_sqrt_inv ha hb, ← sq_le_one_iff₀ (norm_nonneg _), sq,
    ← CStarRing.norm_star_mul_self] at hab
  rw [le_iff_norm_sqrt_mul_sqrt_inv hb_inv ha_inv, inv_inv, ← sq_le_one_iff₀ (norm_nonneg _), sq,
    ← CStarRing.norm_self_mul_star]
  rwa [star_mul, IsSelfAdjoint.of_nonneg sqrt_nonneg,
    IsSelfAdjoint.of_nonneg sqrt_nonneg] at hab ⊢

/-- In a unital C⋆-algebra, if `0 ≤ a` and `0 ≤ b` and `a` and `b` are units, then `a⁻¹ ≤ b⁻¹`
if and only if `b ≤ a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecb8aff199709e4025859741470e658246b3f3b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
