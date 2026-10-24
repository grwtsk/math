# addCommMonoidHomOfHasBinaryBiproducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bda519bff19d5429ae077074ded4980d3435e9c0e3372cefd8745227554abaa2",
  "kind": "def",
  "lexical_name": "addCommMonoidHomOfHasBinaryBiproducts",
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
  "slug": "addcommmonoidhomofhasbinarybiproducts--ae2778815cda1795a0230a1f",
  "source": {
    "blob": "1dbb1b9f5c5f92f92bfc99bb9222802dd2fc221a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 101,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Variant458f144b07c5bed7a19484ce14840021aaee63d58fb1af5e958d88461c72c2e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae2778815cda1795a0230a1f43ac92d8c1297bdde80296243362e131ed96eba9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Variant458f144b07c5bed7a19484ce14840021aaee63d58fb1af5e958d88461c72c2e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bda519bff19d5429ae077074ded4980d3435e9c0e3372cefd8745227554abaa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addCommMonoidHomOfHasBinaryBiproducts : AddCommMonoid (X ⟶ Y) where
  add := (· +ᵣ ·)
  add_assoc :=
    (EckmannHilton.mul_assoc (isUnital_leftAdd X Y) (isUnital_rightAdd X Y) (distrib X Y)).assoc
  zero := 0
  zero_add := (isUnital_rightAdd X Y).left_id
  add_zero := (isUnital_rightAdd X Y).right_id
  add_comm :=
    (EckmannHilton.mul_comm (isUnital_leftAdd X Y) (isUnital_rightAdd X Y) (distrib X Y)).comm
  nsmul := letI : Add (X ⟶ Y) := ⟨(· +ᵣ ·)⟩; nsmulRec

end

section

variable {X Y Z : C}

attribute [local instance] addCommMonoidHomOfHasBinaryBiproducts

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Variant458f144b07c5bed7a19484ce14840021aaee63d58fb1af5e958d88461c72c2e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Variant458f144b07c5bed7a19484ce14840021aaee63d58fb1af5e958d88461c72c2e9.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dbb1b9f5c5f92f92bfc99bb9222802dd2fc221a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
