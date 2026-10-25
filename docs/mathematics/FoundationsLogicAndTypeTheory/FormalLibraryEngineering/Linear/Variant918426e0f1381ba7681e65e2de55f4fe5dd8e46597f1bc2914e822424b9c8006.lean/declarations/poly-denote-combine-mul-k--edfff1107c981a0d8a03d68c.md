# Poly.denote_combine_mul_k

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:230ee81c-e6fc-601e-426e-78872bff1cf5",
  "kind": "theorem",
  "lexical_name": "Poly.denote_combine_mul_k",
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
  "slug": "poly-denote-combine-mul-k--edfff1107c981a0d8a03d68c",
  "source": {
    "blob": "1e5d731a50a7d946997aeff81d9c755aabd23e7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 433,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant918426e0f1381ba7681e65e2de55f4fe5dd8e46597f1bc2914e822424b9c8006.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edfff1107c981a0d8a03d68cedef4b6b3988e10daf9d24488e85f5b811cd1c27",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant918426e0f1381ba7681e65e2de55f4fe5dd8e46597f1bc2914e822424b9c8006.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:230ee81c-e6fc-601e-426e-78872bff1cf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Poly.denote_combine_mul_k (ctx : Context) (a b : Int) (p₁ p₂ : Poly) : (p₁.combine_mul_k a b p₂).denote ctx = a * p₁.denote ctx + b * p₂.denote ctx := by
  unfold combine_mul_k
  cases h₁ : Int.beq' a 0 <;> simp at h₁ <;> simp [*]
  cases h₂ : Int.beq' b 0 <;> simp at h₂ <;> simp [*]
  generalize hugeFuel = fuel
  induction fuel generalizing p₁ p₂
  next => show ((p₁.mul a).append (p₂.mul b)).denote ctx = _; simp
  next fuel ih =>
  cases p₁ <;> cases p₂ <;> simp [combine_mul_k']
  next k₁ k₂ v₂ p₂ =>
    show _ + (combine_mul_k' fuel a b (.num k₁) p₂).denote ctx = _
    simp [ih, Int.mul_assoc]
  next k₁ v₁ p₁ k₂ =>
    show _ + (combine_mul_k' fuel a b p₁ (.num k₂)).denote ctx = _
    simp [ih, Int.mul_assoc]
  next k₁ v₁ p₁ k₂ v₂ p₂ =>
    cases h₁ : Nat.beq v₁ v₂ <;> simp
    next =>
      cases h₂ : Nat.blt v₂ v₁ <;> simp
      next =>
        show _ + (combine_mul_k' fuel a b (add k₁ v₁ p₁) p₂).denote ctx = _
        simp [ih, Int.mul_assoc]
      next =>
        show _ + (combine_mul_k' fuel a b p₁ (add k₂ v₂ p₂)).denote ctx = _
        simp [ih, Int.mul_assoc]
    next =>
      simp at h₁; subst v₂
      cases h₂ : (a * k₁ + b * k₂).beq' 0 <;> simp
      next =>
        show a * k₁ * v₁.denote ctx + (b * k₂ * v₁.denote ctx + (combine_mul_k' fuel a b p₁ p₂).denote ctx) = _
        simp [ih, Int.mul_assoc]
      next =>
        simp at h₂
        show (combine_mul_k' fuel a b p₁ p₂).denote ctx = _
        simp [ih, ← Int.mul_assoc, ← Int.add_mul, h₂]

attribute [local simp] Poly.denote_combine Poly.denote_combine_mul_k

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant918426e0f1381ba7681e65e2de55f4fe5dd8e46597f1bc2914e822424b9c8006.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant918426e0f1381ba7681e65e2de55f4fe5dd8e46597f1bc2914e822424b9c8006.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e5d731a50a7d946997aeff81d9c755aabd23e7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
