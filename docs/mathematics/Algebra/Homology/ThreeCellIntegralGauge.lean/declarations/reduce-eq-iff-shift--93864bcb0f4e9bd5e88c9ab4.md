# reduce_eq_iff_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d3b282f-bddb-1f1a-8572-5cd81675ab97",
  "kind": "theorem",
  "lexical_name": "reduce_eq_iff_shift",
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
  "slug": "reduce-eq-iff-shift--93864bcb0f4e9bd5e88c9ab4",
  "source": {
    "blob": "eb0cf56ed96a0f25e82ef69c48c22b7ce6425229",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 92,
    "path": "GRWTSK/Algebra/Homology/ThreeCellIntegralGauge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93864bcb0f4e9bd5e88c9ab4e3b20400f62d02d88122ff0d542cb42bd1b84280",
  "verification": {
    "reference": "docs/verification/Algebra/Homology/ThreeCellIntegralGauge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d3b282f-bddb-1f1a-8572-5cd81675ab97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduce_eq_iff_shift (u v : Cell V) :
    reduce u = reduce v ↔ ∃ w : Triple V, total w = 0 ∧ u = shift w v := by
  constructor
  · intro h
    have hs := congrArg Prod.fst h
    have he := congrArg Prod.snd h
    refine ⟨u.1 - v.1, ?_, ?_⟩
    · change total u.1 = total v.1 at hs
      calc
        total (u.1 - v.1) = total u.1 - total v.1 := by dsimp [total]; abel
        _ = 0 := by rw [hs, sub_self]
    · apply Prod.ext
      · change u.1 = v.1 + (u.1 - v.1); abel
      · have hd : delta0 (u.1 - v.1) = delta0 u.1 - delta0 v.1 := by
          funext j
          fin_cases j <;> simp [delta0] <;> abel
        change delta0 u.1 - u.2 = delta0 v.1 - v.2 at he
        change u.2 = v.2 + delta0 (u.1 - v.1)
        rw [hd]
        calc
          u.2 = delta0 u.1 - (delta0 u.1 - u.2) := by abel
          _ = delta0 u.1 - (delta0 v.1 - v.2) := by rw [he]
          _ = v.2 + (delta0 u.1 - delta0 v.1) := by abel
  · rintro ⟨w, hw, rfl⟩
    apply Prod.ext
    · change total (v.1 + w) = total v.1
      calc
        _ = total v.1 + total w := by dsimp [total]; abel
        _ = total v.1 := by rw [hw, add_zero]
    · funext j
      fin_cases j <;> simp [reduce, shift, mismatch, delta0] <;> abel

/-- One additive source map must act on vertices AND edges. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Homology/ThreeCellIntegralGauge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Homology/ThreeCellIntegralGauge.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb0cf56ed96a0f25e82ef69c48c22b7ce6425229` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
