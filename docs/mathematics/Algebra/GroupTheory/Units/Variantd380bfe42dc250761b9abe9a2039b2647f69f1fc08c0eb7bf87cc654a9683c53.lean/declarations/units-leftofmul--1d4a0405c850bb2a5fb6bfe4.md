# Units.leftOfMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1319290f14b5f67800cc0ea4470118c172284c190906868f050e176d5b030b9c",
  "kind": "def",
  "lexical_name": "Units.leftOfMul",
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
  "slug": "units-leftofmul--1d4a0405c850bb2a5fb6bfe4",
  "source": {
    "blob": "fe376cfcfa91b9a0bb2ba99b816c211082cb6566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 56,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d4a0405c850bb2a5fb6bfe4908cd0991099b9e831cceccc5626984cc9721823",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1319290f14b5f67800cc0ea4470118c172284c190906868f050e176d5b030b9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Units.leftOfMul (u : Mˣ) (a b : M) (hu : a * b = u) (hc : Commute a b) : Mˣ where
  val := a
  inv := b * ↑u⁻¹
  val_inv := by rw [← mul_assoc, hu, u.mul_inv]
  inv_val := by
    have : Commute a u := hu ▸ (Commute.refl _).mul_right hc
    rw [← this.units_inv_right.right_comm, ← hc.eq, hu, u.mul_inv]

/-- If the product of two commuting elements is a unit, then the right multiplier is a unit. -/
@[to_additive "If the sum of two commuting elements is an additive unit, then the right summand
is an additive unit."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe376cfcfa91b9a0bb2ba99b816c211082cb6566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
