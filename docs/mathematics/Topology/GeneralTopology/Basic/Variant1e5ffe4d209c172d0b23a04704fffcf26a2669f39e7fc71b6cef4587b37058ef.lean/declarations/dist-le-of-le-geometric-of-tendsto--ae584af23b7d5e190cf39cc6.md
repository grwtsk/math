# dist_le_of_le_geometric_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98ad20a9-5f7d-ceca-9909-8db68c7da075",
  "kind": "theorem",
  "lexical_name": "dist_le_of_le_geometric_of_tendsto",
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
  "slug": "dist-le-of-le-geometric-of-tendsto--ae584af23b7d5e190cf39cc6",
  "source": {
    "blob": "f229c808184fe0b2489be8d178257a08b5bbb449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 563,
    "line": 550,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1e5ffe4d209c172d0b23a04704fffcf26a2669f39e7fc71b6cef4587b37058ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae584af23b7d5e190cf39cc6e33e717c284c964ca6192fe3bfda26e41e5ecad6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1e5ffe4d209c172d0b23a04704fffcf26a2669f39e7fc71b6cef4587b37058ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98ad20a9-5f7d-ceca-9909-8db68c7da075`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–563.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_le_of_le_geometric_of_tendsto {a : α} (ha : Tendsto f atTop (𝓝 a)) (n : ℕ) :
    dist (f n) a ≤ C * r ^ n / (1 - r) := by
  have := aux_hasSum_of_le_geometric hr hu
  convert! dist_le_tsum_of_dist_le_of_tendsto _ hu ⟨_, this⟩ ha n
  simp only [pow_add, mul_left_comm C, mul_div_right_comm]
  rw [mul_comm]
  exact (this.mul_left _).tsum_eq.symm

end

variable (hu₂ : ∀ n, dist (f n) (f (n + 1)) ≤ C / 2 / 2 ^ n)
include hu₂

/-- If `dist (f n) (f (n+1))` is bounded by `(C / 2) / 2^n`, then `f` is a Cauchy sequence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1e5ffe4d209c172d0b23a04704fffcf26a2669f39e7fc71b6cef4587b37058ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1e5ffe4d209c172d0b23a04704fffcf26a2669f39e7fc71b6cef4587b37058ef.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f229c808184fe0b2489be8d178257a08b5bbb449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
