# exact_native_rationalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05375e98-cf20-8b2b-c931-072a56303390",
  "kind": "theorem",
  "lexical_name": "exact_native_rationalization",
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
  "slug": "exact-native-rationalization--5077893044fa7ff6f45a38b2",
  "source": {
    "blob": "1f9c05eca287447d198bdbbfd8afceed9c97c1d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 20,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularNativeGeometry/Variant39bf90364fc5c2b87929a7bf36d82a8ab98d37f753f3ec65e567d99098265281.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5077893044fa7ff6f45a38b2096bbe210becc86567e4c6ae41191f063e9a1f0f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularNativeGeometry/Variant39bf90364fc5c2b87929a7bf36d82a8ab98d37f753f3ec65e567d99098265281.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05375e98-cf20-8b2b-c931-072a56303390`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exact_native_rationalization {n : ℕ} (hn : 1 ≤ n) :
    cellClock n (n + 1 : ℕ) = 2 /
      (Real.sqrt n * Real.sqrt (n + 1 : ℕ) * (Real.sqrt n + Real.sqrt (n + 1 : ℕ))) := by
  have ha : Real.sqrt (n : ℝ) ≠ 0 := (Real.sqrt_pos.mpr (by exact_mod_cast hn)).ne'
  have hb : Real.sqrt (n + 1 : ℕ) ≠ 0 := (by positivity : 0 < Real.sqrt (n + 1 : ℕ)).ne'
  have hs : Real.sqrt (n : ℝ) + Real.sqrt (n + 1 : ℕ) ≠ 0 := by positivity
  have ha2 := Real.sq_sqrt (Nat.cast_nonneg (α := ℝ) n)
  have hb2 := Real.sq_sqrt (Nat.cast_nonneg (α := ℝ) (n + 1))
  have hb2r : Real.sqrt (n + 1 : ℕ) ^ 2 = (n : ℝ) + 1 :=
    hb2.trans (by push_cast; rfl)
  unfold cellClock
  field_simp [ha, hb, hs]
  nlinarith [ha2, hb2r]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularNativeGeometry/Variant39bf90364fc5c2b87929a7bf36d82a8ab98d37f753f3ec65e567d99098265281.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularNativeGeometry/Variant39bf90364fc5c2b87929a7bf36d82a8ab98d37f753f3ec65e567d99098265281.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f9c05eca287447d198bdbbfd8afceed9c97c1d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
