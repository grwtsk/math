# HammingIso.toPerm_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bf72eeb-5f06-b174-d08b-13034eaa69c8",
  "kind": "theorem",
  "lexical_name": "HammingIso.toPerm_injective",
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
  "slug": "hammingiso-toperm-injective--9cc353dde245273f849b440a",
  "source": {
    "blob": "7485cdf53c855ccabd410ce7351ea37ed0a77c92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 306,
    "path": "GRWTSK/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cc353dde245273f849b440a3afbccb0f362e28c8ca52d0b036eaea30924638f",
  "verification": {
    "reference": "docs/verification/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bf72eeb-5f06-b174-d08b-13034eaa69c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HammingIso.toPerm_injective {n : Nat} :
    Function.Injective (HammingIso.toPerm : HammingIso n → BitPerm n) := by
  intro g h hperm
  have hoffset : g.offset = h.offset := by
    have hz := congrArg (fun p : BitPerm n => p (zeroBits n)) hperm
    simpa [HammingIso.toPerm_apply, coordinatePermutation_zero] using hz
  have hcoordinates : g.coordinates = h.coordinates := by
    apply coordinatePermutationHom_injective
    apply Equiv.Perm.ext
    intro x
    have hx := congrArg (fun p : BitPerm n => p x) hperm
    simp only [HammingIso.toPerm_apply] at hx
    rw [hoffset] at hx
    exact (xorBits_cancel_right _ _ h.offset).mp hx
  exact HammingIso.ext hoffset hcoordinates

/-! ## Conjugation -/

/-- Conjugation in explicit function order: `x ↦ g (H (g⁻¹ x))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7485cdf53c855ccabd410ce7351ea37ed0a77c92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
