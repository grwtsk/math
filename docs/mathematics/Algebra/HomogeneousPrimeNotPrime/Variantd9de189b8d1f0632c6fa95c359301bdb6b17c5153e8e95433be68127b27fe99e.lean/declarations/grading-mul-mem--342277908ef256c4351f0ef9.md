# grading.mul_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b28d084-c550-1ddf-7fe6-64afa0cf406e",
  "kind": "theorem",
  "lexical_name": "grading.mul_mem",
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
  "slug": "grading-mul-mem--342277908ef256c4351f0ef9",
  "source": {
    "blob": "a46c5317696052c6f01d0aa1fe3fc91cf2cff48a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 92,
    "path": "GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variantd9de189b8d1f0632c6fa95c359301bdb6b17c5153e8e95433be68127b27fe99e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:342277908ef256c4351f0ef95820ad3b1b0761a92aafc56143f1f76304aebe0f",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousPrimeNotPrime/Variantd9de189b8d1f0632c6fa95c359301bdb6b17c5153e8e95433be68127b27fe99e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b28d084-c550-1ddf-7fe6-64afa0cf406e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem grading.mul_mem :
    ∀ ⦃i j : Two⦄ {a b : R × R} (_ : a ∈ grading R i) (_ : b ∈ grading R j),
      a * b ∈ grading R (i + j)
  | 0, 0, a, b, (ha : a.1 = a.2), (hb : b.1 = b.2) => show a.1 * b.1 = a.2 * b.2 by rw [ha, hb]
  | 0, 1, a, b, (_ : a.1 = a.2), (hb : b.1 = 0) =>
    show a.1 * b.1 = 0 by rw [hb, mul_zero]
  | 1, 0, a, b, (ha : a.1 = 0), _ => show a.1 * b.1 = 0 by rw [ha, zero_mul]
  | 1, 1, a, b, (ha : a.1 = 0), _ => show a.1 * b.1 = 0 by rw [ha, zero_mul]

end

local notation "R" => ZMod 4

/-- `R² ≅ {(a, a) | a ∈ R} ⨁ {(0, b) | b ∈ R}` by `(x, y) ↦ (x, x) + (0, y - x)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousPrimeNotPrime/Variantd9de189b8d1f0632c6fa95c359301bdb6b17c5153e8e95433be68127b27fe99e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variantd9de189b8d1f0632c6fa95c359301bdb6b17c5153e8e95433be68127b27fe99e.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a46c5317696052c6f01d0aa1fe3fc91cf2cff48a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
