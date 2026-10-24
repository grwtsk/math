# tendsto_primeUpperCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d66d17d0-5c18-7421-b4ee-e6bef53a4d94",
  "kind": "theorem",
  "lexical_name": "tendsto_primeUpperCandidate",
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
  "slug": "tendsto-primeuppercandidate--ee04a5c80e3b38668a103df5",
  "source": {
    "blob": "db8181eba682ff15d4baf598fbcb3c8815994841",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 367,
    "path": "GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee04a5c80e3b38668a103df5d7c5a6abebbaf227ee0cc682d9c316ff59ddfab4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d66d17d0-5c18-7421-b4ee-e6bef53a4d94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_primeUpperCandidate :
    Tendsto primeUpperCandidate atTop atTop := by
  refine tendsto_atTop.2 fun b => ?_
  filter_upwards [eventually_ge_atTop (max b 2)] with n hn
  have hn2 : 2 ≤ n := (le_max_right _ _).trans hn
  have hlog : 0 < Real.log (n : ℝ) := Real.log_pos (by exact_mod_cast (show 1 < n by omega))
  have hceil : 1 ≤ ⌈Real.log n⌉₊ := (Nat.one_le_ceil_iff).2 hlog
  unfold primeUpperCandidate
  have : b ≤ n := (le_max_left _ _).trans hn
  calc
    b ≤ n := this
    _ = 1 * n * 1 := by omega
    _ ≤ 40 * n * ⌈Real.log n⌉₊ :=
      Nat.mul_le_mul (Nat.mul_le_mul (by norm_num) le_rfl) hceil

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db8181eba682ff15d4baf598fbcb3c8815994841` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
