# Unitary.norm_sub_one_lt_two_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:178c62f5-2807-ad46-e069-2ec73fcb0e9b",
  "kind": "lemma",
  "lexical_name": "Unitary.norm_sub_one_lt_two_iff",
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
  "slug": "unitary-norm-sub-one-lt-two-iff--ddde9ed6d1826cb07567ce30",
  "source": {
    "blob": "092b916ab1e0d55969c502ec34031fb0f1a901a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/Connected/Variantf997835b509882650729f413f8ffb2d786a683870e2fa59b58886fe0397718cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddde9ed6d1826cb07567ce3000bf77448e87fb7b57bfd25ed3cdcc5201963207",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Connected/Variantf997835b509882650729f413f8ffb2d786a683870e2fa59b58886fe0397718cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:178c62f5-2807-ad46-e069-2ec73fcb0e9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Unitary.norm_sub_one_lt_two_iff {u : A} (hu : u ∈ unitary A) :
    ‖u - 1‖ < 2 ↔ -1 ∉ spectrum ℂ u := by
  nontriviality A
  rw [← sq_lt_sq₀ (by positivity) (by positivity)]
  constructor
  · intro h h1
    have := two_mul_one_sub_le_norm_sub_one_sq hu h1 |>.trans_lt h
    norm_num at this
  · contrapose!
    obtain ⟨x, hx⟩ := spectrum.isCompact (𝕜 := ℂ) u |>.image continuous_re |>.exists_isLeast <|
      (spectrum.nonempty _).image _
    rw [norm_sub_one_sq_eq hu hx]
    obtain ⟨z, hz, rfl⟩ := hx.1
    intro key
    replace key : z.re ≤ -1 := by linarith
    have hz_norm : ‖z‖ = 1 := spectrum.norm_eq_one_of_unitary hu hz
    rw [← hz_norm, ← RCLike.re_eq_complex_re, RCLike.re_le_neg_norm_iff_eq_neg_norm, hz_norm] at key
    exact key ▸ hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Connected/Variantf997835b509882650729f413f8ffb2d786a683870e2fa59b58886fe0397718cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Connected/Variantf997835b509882650729f413f8ffb2d786a683870e2fa59b58886fe0397718cd.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `092b916ab1e0d55969c502ec34031fb0f1a901a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
