# Even.convexOn_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f55525f2-2895-7cf0-cd4f-389ae030fd31",
  "kind": "theorem",
  "lexical_name": "Even.convexOn_pow",
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
  "slug": "even-convexon-pow--10a871ae9a046ea0baa37340",
  "source": {
    "blob": "a05d1e2cb1dbdcaad7e9bd8b8865db4e4782c211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 111,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10a871ae9a046ea0baa373405086459faa4ef353def33deaa79da2ed118f82e6",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f55525f2-2895-7cf0-cd4f-389ae030fd31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem Even.convexOn_pow {n : ℕ} (hn : Even n) :
    ConvexOn ℝ Set.univ fun x : ℝ => x ^ n := by
  refine' ⟨convex_univ, _⟩
  rintro a - b - μ ν hμ hν h
  obtain ⟨k, rfl⟩ := hn.exists_two_nsmul _
  -- Porting note: added type ascription to LHS
  have : (0 : ℝ) ≤ (a - b) ^ 2 * μ * ν := by positivity
  calc
    (μ * a + ν * b) ^ (2 * k) = ((μ * a + ν * b) ^ 2) ^ k := by rw [pow_mul]
    _ ≤ ((μ + ν) * (μ * a ^ 2 + ν * b ^ 2)) ^ k := by gcongr; linarith
    _ = (μ * a ^ 2 + ν * b ^ 2) ^ k := by rw [h]; ring
    _ ≤ μ * (a ^ 2) ^ k + ν * (b ^ 2) ^ k := ?_
    _ ≤ μ * a ^ (2 * k) + ν * b ^ (2 * k) := by ring_nf; rfl
  -- Porting note: `rw [mem_Ici]` was `dsimp`
  refine' (convexOn_pow k).2 _ _ hμ hν h <;> rw [mem_Ici] <;> positivity
#align even.convex_on_pow Even.convexOn_pow

open Int in
/-- `x^m`, `m : ℤ` is convex on `(0, +∞)` for all `m`.

We give an elementary proof rather than using the second derivative test, since this lemma is
needed early in the analysis library. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a05d1e2cb1dbdcaad7e9bd8b8865db4e4782c211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
