# num_lt_succ_floor_mul_den

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:158bfd46-2d00-2311-fa64-799107b466f6",
  "kind": "theorem",
  "lexical_name": "num_lt_succ_floor_mul_den",
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
  "slug": "num-lt-succ-floor-mul-den--da97851e16255fdf7350c373",
  "source": {
    "blob": "a9ed8e515441704b61324a64306195be30957c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 116,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da97851e16255fdf7350c373470c4335bc40d7f4886f96b985509c91f939d399",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:158bfd46-2d00-2311-fa64-799107b466f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem num_lt_succ_floor_mul_den (q : ℚ) : q.num < (⌊q⌋ + 1) * q.den := by
  suffices (q.num : ℚ) < (⌊q⌋ + 1) * q.den by exact_mod_cast this
  suffices (q.num : ℚ) < (q - fract q + 1) * q.den by
    have : (⌊q⌋ : ℚ) = q - fract q := eq_sub_of_add_eq <| floor_add_fract q
    rwa [this]
  suffices (q.num : ℚ) < q.num + (1 - fract q) * q.den by
    have : (q - fract q + 1) * q.den = q.num + (1 - fract q) * q.den
    calc
      (q - fract q + 1) * q.den = (q + (1 - fract q)) * q.den := by ring
      _ = q * q.den + (1 - fract q) * q.den := by rw [add_mul]
      _ = q.num + (1 - fract q) * q.den := by simp

    rwa [this]
  suffices 0 < (1 - fract q) * q.den by
    rw [← sub_lt_iff_lt_add']
    simpa
  have : 0 < 1 - fract q := by
    have : fract q < 1 := fract_lt_one q
    have : 0 + fract q < 1 := by simp [this]
    rwa [lt_sub_iff_add_lt]
  exact mul_pos this (by exact_mod_cast q.pos)
#align rat.num_lt_succ_floor_mul_denom Rat.num_lt_succ_floor_mul_den

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9ed8e515441704b61324a64306195be30957c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
