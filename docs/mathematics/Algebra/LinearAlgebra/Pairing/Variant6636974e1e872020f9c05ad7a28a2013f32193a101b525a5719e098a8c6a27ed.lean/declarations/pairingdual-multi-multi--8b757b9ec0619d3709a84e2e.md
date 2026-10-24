# pairingDual_ιMulti_ιMulti

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87abbd12-dedc-b8f9-e952-598bdf11b5b4",
  "kind": "lemma",
  "lexical_name": "pairingDual_ιMulti_ιMulti",
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
  "slug": "pairingdual-multi-multi--8b757b9ec0619d3709a84e2e",
  "source": {
    "blob": "35bf48decb1c4dc028f1cc2b5a32ae2670e544c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 79,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b757b9ec0619d3709a84e2e017b3537228a9d7ebdf1b5b946ce1b4f867fb320",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87abbd12-dedc-b8f9-e952-598bdf11b5b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pairingDual_ιMulti_ιMulti {n : ℕ} (f : (_ : Fin n) → Module.Dual R M) (v : Fin n → M) :
    pairingDual R M n (ιMulti _ _ f) (ιMulti _ _ v) =
      Matrix.det (n := Fin n) (.of (fun i j ↦ f j (v i))) := by
  simp [pairingDual]

section Deprecated

/-! If an `R`-module `M` has a family of vectors `x : ι → M` and linear maps `f : ι → M`
such that `f i (x j)` is `1` or `0` depending on `i = j` or `i ≠ j`, then if `ι` has
a linear order, then a similar property regarding `pairingDual R M n`
applies to the family of vectors indexed
by `Fin n ↪o ι` in `⋀[R]^n M` and in `⋀[R]^n (Module.Dual R M)` that are obtained
by taking exterior products of the `x i` and the `f j`.

These results were added with the intention of using them to prove that exterior powers of a free
modules are free. However this result has since been established by other means (see
`Module.Basis.exteriorPower`) and so this work is now deprecated. -/

variable {R M} {ι : Type*} [LinearOrder ι]
  (x : ι → M) (f : ι → Module.Dual R M)
  (h₁ : ∀ i, f i (x i) = 1) (h₀ : ∀ ⦃i j⦄, i ≠ j → f i (x j) = 0) (n : ℕ)

include h₁ h₀ in
@[deprecated "no replacement" (since := "2026-08-23")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35bf48decb1c4dc028f1cc2b5a32ae2670e544c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
