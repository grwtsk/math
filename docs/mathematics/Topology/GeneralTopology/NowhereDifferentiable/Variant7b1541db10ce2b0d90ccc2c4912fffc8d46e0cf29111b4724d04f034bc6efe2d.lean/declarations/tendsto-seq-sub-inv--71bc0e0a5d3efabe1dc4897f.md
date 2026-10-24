# tendsto_seq_sub_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3747eed2-9545-b297-d539-da416855de49",
  "kind": "theorem",
  "lexical_name": "tendsto_seq_sub_inv",
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
  "slug": "tendsto-seq-sub-inv--71bc0e0a5d3efabe1dc4897f",
  "source": {
    "blob": "3d039fe7399d5773bf04d9bd72575f5fee7bf6ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 128,
    "path": "GRWTSK/Topology/GeneralTopology/NowhereDifferentiable/Variant7b1541db10ce2b0d90ccc2c4912fffc8d46e0cf29111b4724d04f034bc6efe2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71bc0e0a5d3efabe1dc4897fe7a7b38fe379d45b766b69f6a7d8a945546e9734",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NowhereDifferentiable/Variant7b1541db10ce2b0d90ccc2c4912fffc8d46e0cf29111b4724d04f034bc6efe2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3747eed2-9545-b297-d539-da416855de49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_seq_sub_inv {b : ℝ} (hb : 1 < b) (x : ℝ) :
    Tendsto (fun m ↦ (seq b x m - x)⁻¹) atTop atTop := by
  refine .inv_tendsto_nhdsGT_zero <| tendsto_nhdsWithin_iff.mpr ⟨?_, .of_forall ?_⟩
  · simpa using (tendsto_seq hb x |>.sub_const x)
  · simpa using lt_seq (by grind) x

/-!
To estimate the slope $(f(x_m) - f(x)) / (x_m - x)$, we break the infinite sum in
$f(x_m) - f(x)$ into two parts $f(x_m) - f(x) = A + B$, where

$$ A = ∑_{n=0}^{m-1} a^n (\cos(b^n\pi x_m) - \cos(b^n\pi x)) $$
$$ B = ∑_{n=m}^{\infty} a^n (\cos(b^n\pi x_m) - \cos(b^n\pi x)) $$
-/

/-- The partial sum has upper bound in absolute value $|A| \le |x_m - x| \pi (ab)^m / (ab - 1)$ -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NowhereDifferentiable/Variant7b1541db10ce2b0d90ccc2c4912fffc8d46e0cf29111b4724d04f034bc6efe2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NowhereDifferentiable/Variant7b1541db10ce2b0d90ccc2c4912fffc8d46e0cf29111b4724d04f034bc6efe2d.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d039fe7399d5773bf04d9bd72575f5fee7bf6ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
