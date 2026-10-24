# factorization_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d737a19d-8965-33ca-be89-7e286072ae6a",
  "kind": "theorem",
  "lexical_name": "factorization_div",
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
  "slug": "factorization-div--619eeed1e2e6ff3d8e475710",
  "source": {
    "blob": "f18b7d1f78c30a8108c9805ec5f0a01f5048f219",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 518,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantc0fd4f6f9c179529fce5f379a0b480a41514562deb5025c4097907376d6e56ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:619eeed1e2e6ff3d8e47571007979be263409b65d95c6632c3c433b4e98da6cc",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variantc0fd4f6f9c179529fce5f379a0b480a41514562deb5025c4097907376d6e56ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d737a19d-8965-33ca-be89-7e286072ae6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorization_div {d n : ℕ} (h : d ∣ n) :
    (n / d).factorization = n.factorization - d.factorization := by
  rcases eq_or_ne d 0 with (rfl | hd); · simp [zero_dvd_iff.mp h]
  rcases eq_or_ne n 0 with (rfl | hn); · simp
  apply add_left_injective d.factorization
  simp only
  rw [tsub_add_cancel_of_le <| (Nat.factorization_le_iff_dvd hd hn).mpr h, ←
    Nat.factorization_mul (Nat.div_pos (Nat.le_of_dvd hn.bot_lt h) hd.bot_lt).ne' hd,
    Nat.div_mul_cancel h]
#align nat.factorization_div Nat.factorization_div

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variantc0fd4f6f9c179529fce5f379a0b480a41514562deb5025c4097907376d6e56ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantc0fd4f6f9c179529fce5f379a0b480a41514562deb5025c4097907376d6e56ab.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f18b7d1f78c30a8108c9805ec5f0a01f5048f219` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
