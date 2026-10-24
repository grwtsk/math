# _root_.GRWTSK.Algebra.LinearAlgebra.Subtype.Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.Module.End.pow_apply_mem_of_forall_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fceb28d7-da54-0f15-7257-90581af85b2c",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.Subtype.Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.Module.End.pow_apply_mem_of_forall_mem",
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
  "slug": "root-grwtsk-algebra-linearalgebra-subtype-variant838b1be6cbcaa49cc908e72--d0e5b643da7eb5ed9e6cb010",
  "source": {
    "blob": "80480a50590e0d19ba4fe3dc863523898200a1b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 289,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0e5b643da7eb5ed9e6cb0106c1e53947e0f869622052ce51250dcbaa57136f2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fceb28d7-da54-0f15-7257-90581af85b2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.Subtype.Variant838b1be6cbcaa49cc908e72c6d66c585dc4f44954f775a3c9fef2994d0ee1e0b.Module.End.pow_apply_mem_of_forall_mem {p : Submodule R M} (n : ℕ)
    (h : ∀ x ∈ p, f' x ∈ p) (x : M) (hx : x ∈ p) : (f' ^ n) x ∈ p := by
  induction n generalizing x with
  | zero => simpa
  | succ n ih =>
    simpa only [iterate_succ, coe_comp, Function.comp_apply, restrict_apply] using ih _ (h _ hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80480a50590e0d19ba4fe3dc863523898200a1b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
