# pairingDual_ιMulti_ιMulti

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f1833de979f6d084316a16a3108dcd8adc42fb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:932d5a24-82d0-7f6f-f1b3-7c99fc7039ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e25724f0-c8d5-8682-2dc1-0d559ffb48f6",
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
  "slug": "pairingdual-multi-multi--7c5926e97b1b6a2eb45cc2db",
  "source": {
    "blob": "7f1833de979f6d084316a16a3108dcd8adc42fb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c5926e97b1b6a2eb45cc2db25720139134cd574016943372ee02c1f8bbfe4f5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e25724f0-c8d5-8682-2dc1-0d559ffb48f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–94.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f1833de979f6d084316a16a3108dcd8adc42fb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
