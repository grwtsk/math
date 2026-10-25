# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e975e35d040986c48bdcb25b54a2403ac66285ff940189934ff1f70f001b9e1f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--f95c0c39067d2d01e26b9daf",
  "source": {
    "blob": "1891002e70a3260acc3be58a83b5b98456da5123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 283,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta7f3cfb07362f3ffbb9f7999c7eb11c652f19c2ab7bfc0c59b53f8713385293b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f95c0c39067d2d01e26b9daf3dd14d8c5d4caeea34a5dadb5a8e45daef671b2a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta7f3cfb07362f3ffbb9f7999c7eb11c652f19c2ab7bfc0c59b53f8713385293b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e975e35d040986c48bdcb25b54a2403ac66285ff940189934ff1f70f001b9e1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) GroupWithZero.toDivisionMonoid : DivisionMonoid G₀ :=
  { ‹GroupWithZero G₀› with
    inv := Inv.inv,
    inv_inv := fun a => by
      by_cases h : a = 0
      · simp [h]
      · exact left_inv_eq_right_inv (inv_mul_cancel₀ <| inv_ne_zero h) (inv_mul_cancel₀ h)
        ,
    mul_inv_rev := fun a b => by
      by_cases ha : a = 0
      · simp [ha]
      by_cases hb : b = 0
      · simp [hb]
      apply inv_eq_of_mul
      simp [mul_assoc, ha, hb],
    inv_eq_of_mul := fun _ _ => inv_eq_of_mul }

-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta7f3cfb07362f3ffbb9f7999c7eb11c652f19c2ab7bfc0c59b53f8713385293b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta7f3cfb07362f3ffbb9f7999c7eb11c652f19c2ab7bfc0c59b53f8713385293b.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1891002e70a3260acc3be58a83b5b98456da5123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
