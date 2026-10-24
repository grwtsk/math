# mkRingHomOfMulSelfOfTwoNeZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:908713fc1ca2755dc4021f30ffe5bd5ab91c2beae5bdbf1ad38615df821fd5c8",
  "kind": "def",
  "lexical_name": "mkRingHomOfMulSelfOfTwoNeZero",
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
  "slug": "mkringhomofmulselfoftwonezero--1420d92645fa1ec1ce3bcd3e",
  "source": {
    "blob": "769785643bef9a7ee0f3bd052af3148cb38fc49b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 626,
    "line": 612,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantea9d9ff409b9f219d06d2b4f7af2606a2147c37022a13c4541213797b248c346.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1420d92645fa1ec1ce3bcd3e4a02376a8141e81627d817d4b9cdb185763f9c87",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantea9d9ff409b9f219d06d2b4f7af2606a2147c37022a13c4541213797b248c346.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:908713fc1ca2755dc4021f30ffe5bd5ab91c2beae5bdbf1ad38615df821fd5c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 612–626.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkRingHomOfMulSelfOfTwoNeZero (h : ∀ x, f (x * x) = f x * f x) (h_two : (2 : α) ≠ 0)
    (h_one : f 1 = 1) : β →+* α :=
  { f with
    map_one' := h_one,
    map_mul' := fun x y => by
      have hxy := h (x + y)
      rw [mul_add, add_mul, add_mul, f.map_add, f.map_add, f.map_add, f.map_add, h x, h y, add_mul,
        mul_add, mul_add, ← sub_eq_zero, add_comm (f x * f x + f (y * x)), ← sub_sub, ← sub_sub,
        ← sub_sub, mul_comm y x, mul_comm (f y) (f x)] at hxy
      simp only [add_assoc, add_sub_assoc, add_sub_cancel] at hxy
      rw [sub_sub, ← two_mul, ← add_sub_assoc, ← two_mul, ← mul_sub, mul_eq_zero (M₀ := α),
        sub_eq_zero, or_iff_not_imp_left] at hxy
      exact hxy h_two }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantea9d9ff409b9f219d06d2b4f7af2606a2147c37022a13c4541213797b248c346.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantea9d9ff409b9f219d06d2b4f7af2606a2147c37022a13c4541213797b248c346.lean#L612).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `769785643bef9a7ee0f3bd052af3148cb38fc49b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
