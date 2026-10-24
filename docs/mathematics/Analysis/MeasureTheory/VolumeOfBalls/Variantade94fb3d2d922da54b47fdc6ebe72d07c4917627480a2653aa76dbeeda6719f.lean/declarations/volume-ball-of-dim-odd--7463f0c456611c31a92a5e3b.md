# volume_ball_of_dim_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a00cabbe-77e7-6d9c-0f1b-24162bf5f138",
  "kind": "lemma",
  "lexical_name": "volume_ball_of_dim_odd",
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
  "slug": "volume-ball-of-dim-odd--7463f0c456611c31a92a5e3b",
  "source": {
    "blob": "77c7d855709f769ed7cc2ec76a321485e4b794ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 379,
    "path": "GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variantade94fb3d2d922da54b47fdc6ebe72d07c4917627480a2653aa76dbeeda6719f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7463f0c456611c31a92a5e3b93af7a9c12510604353dfa70391911a228523105",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/VolumeOfBalls/Variantade94fb3d2d922da54b47fdc6ebe72d07c4917627480a2653aa76dbeeda6719f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a00cabbe-77e7-6d9c-0f1b-24162bf5f138`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma volume_ball_of_dim_odd {k : ℕ} (hk : finrank ℝ E = 2 * k + 1) (x : E) (r : ℝ) :
    volume (ball x r) =
      .ofReal r ^ finrank ℝ E * .ofReal (π ^ k * 2 ^ (k + 1) / (finrank ℝ E : ℕ)‼) := by
  have : Nontrivial E := Module.nontrivial_of_finrank_pos (R := ℝ) (hk ▸ (2 * k).succ_pos)
  rw [volume_ball, hk, pow_succ (√π), pow_mul, sq_sqrt pi_nonneg, mul_div_assoc, mul_div_assoc]
  congr 3
  suffices √π / (↑(2 * k + 1)‼ * √π / 2 ^ (k + 1)) = 2 ^ (k + 1) / ↑(2 * k + 1)‼ by
    simpa [add_div, add_right_comm, -one_div, Gamma_nat_add_one_add_half]
  field

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/VolumeOfBalls/Variantade94fb3d2d922da54b47fdc6ebe72d07c4917627480a2653aa76dbeeda6719f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variantade94fb3d2d922da54b47fdc6ebe72d07c4917627480a2653aa76dbeeda6719f.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77c7d855709f769ed7cc2ec76a321485e4b794ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
