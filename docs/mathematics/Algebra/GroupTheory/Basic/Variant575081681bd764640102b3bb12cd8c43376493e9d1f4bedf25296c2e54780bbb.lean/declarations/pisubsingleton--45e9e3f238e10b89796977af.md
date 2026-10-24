# piSubsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e9cd8b37ccc8b81e1cc8747b1f183823aeaa6dded057513828180456a4eac69f",
  "kind": "def",
  "lexical_name": "piSubsingleton",
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
  "slug": "pisubsingleton--45e9e3f238e10b89796977af",
  "source": {
    "blob": "c337586e765e6071301aa476c16fa611584f6ce0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 727,
    "line": 712,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant575081681bd764640102b3bb12cd8c43376493e9d1f4bedf25296c2e54780bbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45e9e3f238e10b89796977af5b1c52d3f40bd9ae75d8ea1e08503598d3da80f2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant575081681bd764640102b3bb12cd8c43376493e9d1f4bedf25296c2e54780bbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e9cd8b37ccc8b81e1cc8747b1f183823aeaa6dded057513828180456a4eac69f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 712–727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def piSubsingleton {ι : Type*} (M : ι → Type*) [∀ j, Mul (M j)] [Subsingleton ι]
  (i : ι) : (∀ j, M j) ≃* M i :=
  { Equiv.piSubsingleton M i with map_mul' := fun _ _ => Pi.mul_apply _ _ _ }
#align mul_equiv.Pi_subsingleton MulEquiv.piSubsingleton
#align add_equiv.Pi_subsingleton AddEquiv.piSubsingleton
#align mul_equiv.Pi_subsingleton_apply MulEquiv.piSubsingleton_apply
#align add_equiv.Pi_subsingleton_apply AddEquiv.piSubsingleton_apply
#align mul_equiv.Pi_subsingleton_symm_apply MulEquiv.piSubsingleton_symm_apply
#align add_equiv.Pi_subsingleton_symm_apply AddEquiv.piSubsingleton_symm_apply

/-!
# Groups
-/

/-- A multiplicative equivalence of groups preserves inversion. -/
@[to_additive "An additive equivalence of additive groups preserves negation."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant575081681bd764640102b3bb12cd8c43376493e9d1f4bedf25296c2e54780bbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant575081681bd764640102b3bb12cd8c43376493e9d1f4bedf25296c2e54780bbb.lean#L712).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c337586e765e6071301aa476c16fa611584f6ce0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
