# imo2019_q1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd65cf94-239b-37a3-9cc8-d7aa36699cef",
  "kind": "theorem",
  "lexical_name": "imo2019_q1",
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
  "slug": "imo2019-q1--efafbf64573b62b23ba7a6fc",
  "source": {
    "blob": "30bb0ad750c301c607b4f43ed533a6c035c2fc33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2019Q1/Variantfdba67e3444679a872810783978b211bcafc82b64c82de78eab47df53b4ebd07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efafbf64573b62b23ba7a6fc0b07650924df1b818ef2d3a2855241fb15b90d67",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2019Q1/Variantfdba67e3444679a872810783978b211bcafc82b64c82de78eab47df53b4ebd07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd65cf94-239b-37a3-9cc8-d7aa36699cef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imo2019_q1 (f : ℤ → ℤ) :
    (∀ a b : ℤ, f (2 * a) + 2 * f b = f (f (a + b))) ↔ f = 0 ∨ ∃ c, f = fun x => 2 * x + c := by
  constructor; swap
  -- easy way: f(x)=0 and f(x)=2x+c work.
  · rintro (rfl | ⟨c, rfl⟩) <;> intros <;> simp only [Pi.zero_apply]; ring
  -- hard way.
  intro hf
  -- functional equation
  -- Using `h` for `(0, b)` and `(-1, b + 1)`, we get `f (b + 1) = f b + m`
  obtain ⟨m, H⟩ : ∃ m, ∀ b, f (b + 1) = f b + m := by
    refine' ⟨(f 0 - f (-2)) / 2, fun b => _⟩
    refine' sub_eq_iff_eq_add'.1 (Int.eq_ediv_of_mul_eq_right two_ne_zero _)
    have h1 : f 0 + 2 * f b = f (f b) := by simpa using hf 0 b
    have h2 : f (-2) + 2 * f (b + 1) = f (f b) := by simpa using hf (-1) (b + 1)
    linarith
  -- Hence, `f` is an affine map, `f b = f 0 + m * b`
  obtain ⟨c, H⟩ : ∃ c, ∀ b, f b = c + m * b := by
    refine' ⟨f 0, fun b => _⟩
    induction' b using Int.induction_on with b ihb b ihb
    · simp
    · simp [H, ihb, mul_add, add_assoc]
    · rw [← sub_eq_of_eq_add (H _)]
      simp [ihb]; ring
  -- Now use `hf 0 0` and `hf 0 1` to show that `m ∈ {0, 2}`
  have H3 : 2 * c = m * c := by simpa [H, mul_add] using hf 0 0
  obtain rfl | rfl : 2 = m ∨ m = 0 := by simpa [H, mul_add, H3] using hf 0 1
  · right; use c; ext b; simp [H, add_comm]
  · left; ext b; simpa [H, two_ne_zero] using H3
#align imo2019_q1 imo2019_q1
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2019Q1/Variantfdba67e3444679a872810783978b211bcafc82b64c82de78eab47df53b4ebd07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2019Q1/Variantfdba67e3444679a872810783978b211bcafc82b64c82de78eab47df53b4ebd07.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30bb0ad750c301c607b4f43ed533a6c035c2fc33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
