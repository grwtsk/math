# norm_holderL_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00a55917-931d-7c58-d603-5cbd28fa2893",
  "kind": "lemma",
  "lexical_name": "norm_holderL_le",
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
  "slug": "norm-holderl-le--86be331e5d5e380fda75d4cd",
  "source": {
    "blob": "0abc04f3413df1771c66fd13001241ad6b9672b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 254,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86be331e5d5e380fda75d4cd3940853aa89288202927bb6687721de41fb3555f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00a55917-931d-7c58-d603-5cbd28fa2893`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_holderL_le [Fact (1 ≤ p)] [Fact (1 ≤ q)] [Fact (1 ≤ r)]
    (B : (i : ι) → E i →L[𝕜] F i →L[𝕜] G i) {K : ℝ≥0} (hBK : ∀ i, ‖B i‖ ≤ K) :
    ‖holderL (p := p) (q := q) r B hBK‖ ≤ K :=
  LinearMap.mkContinuous₂_norm_le _ K.2 _

variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H] [CompleteSpace H]

variable (p q) in
/-- The natural pairing between `lp E p` and `lp F q` (for Hölder conjugate `p q : ℝ≥0∞`) with
values in a space `H` induced by a family of bilinear maps `B : (i : ι) → E i →L[𝕜] F i →L[𝕜] H`.

This is given by `∑' i, B (e i) (f i)`.

In the special case when `B := (NormedSpace.inclusionInDoubleDual 𝕜 E).flip`, which is
definitionally the same as `B := ContinuousLinearMap.id 𝕜 (E →L[𝕜] 𝕜)`, this is the natural map
`lp (fun _ ↦ StrongDual 𝕜 E) p →L[𝕜] StrongDual 𝕜 (lp E q)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0abc04f3413df1771c66fd13001241ad6b9672b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
