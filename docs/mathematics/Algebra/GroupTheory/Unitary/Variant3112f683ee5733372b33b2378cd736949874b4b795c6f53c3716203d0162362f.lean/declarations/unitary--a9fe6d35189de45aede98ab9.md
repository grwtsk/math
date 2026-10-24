# unitary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8f8aed0291b3b36bd90704ff6b60bef5e3f012a61abc24f558512ae22940504",
  "kind": "def",
  "lexical_name": "unitary",
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
  "slug": "unitary--a9fe6d35189de45aede98ab9",
  "source": {
    "blob": "509cb209d3e8fcdbcb892858aa0ff22c842ba25c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 37,
    "path": "GRWTSK/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9fe6d35189de45aede98ab912093d6f6007273210cb040089d70ac0e5d16114",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8f8aed0291b3b36bd90704ff6b60bef5e3f012a61abc24f558512ae22940504`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitary (R : Type*) [Monoid R] [StarMul R] : Submonoid R where
  carrier := { U | star U * U = 1 ∧ U * star U = 1 }
  one_mem' := by simp only [mul_one, and_self_iff, Set.mem_setOf_eq, star_one]
  mul_mem' := @fun U B ⟨hA₁, hA₂⟩ ⟨hB₁, hB₂⟩ => by
    refine ⟨?_, ?_⟩
    · calc
        star (U * B) * (U * B) = star B * star U * U * B := by simp only [mul_assoc, star_mul]
        _ = star B * (star U * U) * B := by rw [← mul_assoc]
        _ = 1 := by rw [hA₁, mul_one, hB₁]
    · calc
        U * B * star (U * B) = U * B * (star B * star U) := by rw [star_mul]
        _ = U * (B * star B) * star U := by simp_rw [← mul_assoc]
        _ = 1 := by rw [hB₂, mul_one, hA₂]

variable {R : Type*}

namespace unitary

section Monoid

variable [Monoid R] [StarMul R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `509cb209d3e8fcdbcb892858aa0ff22c842ba25c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
