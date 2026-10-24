# eval₂RingHom'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8f1a6ff11b1c1c9027d9a68053c30bd32b3ab45d3200d049a6ddf7df7d3d9bc",
  "kind": "def",
  "lexical_name": "eval₂RingHom'",
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
  "slug": "eval-ringhom--335c5615c561c9c935ed90e7",
  "source": {
    "blob": "2ba050083966e8b1e4b0505114dc0014eb3e3d6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 170,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant965b7d68771fc29497a850bfd9d230b700180983705f60b6e1b9be5e66b5fe4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:335c5615c561c9c935ed90e7a3eea6e1d1f952c23359e5354979e3e10921a67a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Defs/Variant965b7d68771fc29497a850bfd9d230b700180983705f60b6e1b9be5e66b5fe4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8f1a6ff11b1c1c9027d9a68053c30bd32b3ab45d3200d049a6ddf7df7d3d9bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def eval₂RingHom' (f : R →+* S) (x : S) (hf : ∀ a, Commute (f a) x) : R[X] →+* S where
  toFun := eval₂ f x
  map_add' _ _ := eval₂_add _ _
  map_zero' := eval₂_zero _ _
  map_mul' _p q := eval₂_mul_noncomm f x fun k => hf <| coeff q k
  map_one' := eval₂_one _ _

end

/-!
We next prove that eval₂ is multiplicative
as long as target ring is commutative
(even if the source ring is not).
-/


section Eval₂

section

variable [CommSemiring S] (f : R →+* S) (x : S)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Defs/Variant965b7d68771fc29497a850bfd9d230b700180983705f60b6e1b9be5e66b5fe4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant965b7d68771fc29497a850bfd9d230b700180983705f60b6e1b9be5e66b5fe4b.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ba050083966e8b1e4b0505114dc0014eb3e3d6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
