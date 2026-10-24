# decompose_mul_add_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85a4e64a-84d4-8aac-3468-4de557692466",
  "kind": "theorem",
  "lexical_name": "decompose_mul_add_right",
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
  "slug": "decompose-mul-add-right--674e94138339949ca4566757",
  "source": {
    "blob": "eeae0a950ee9fd75ceff24122be9d6a347e6fa05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 165,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:674e94138339949ca456675746b1c55d66994a0c7479cefe1900a76b37faa894",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85a4e64a-84d4-8aac-3468-4de557692466`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decompose_mul_add_right [AddRightCancelMonoid ι] [GradedRing 𝒜] {a : A} (b : 𝒜 j) :
    decompose 𝒜 (a * ↑b) (i + j) =
      @GradedMonoid.GMul.mul ι (fun i => 𝒜 i) _ _ _ _ (decompose 𝒜 a i) b :=
  Subtype.ext <| coe_decompose_mul_add_of_right_mem 𝒜 b.2
#align direct_sum.decompose_mul_add_right DirectSum.decompose_mul_add_right

end DirectSum

end AddCancelMonoid

section GradedAlgebra

variable [DecidableEq ι] [AddMonoid ι] [CommSemiring R] [Semiring A] [Algebra R A]

variable (𝒜 : ι → Submodule R A)

/-- A special case of `GradedRing` with `σ = Submodule R A`. This is useful both because it
can avoid typeclass search, and because it provides a more concise name. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant37f5f356c14722a7a92cc2844bf2ee6bfdbc8d93bb543e7a88d1c998897cd36e.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eeae0a950ee9fd75ceff24122be9d6a347e6fa05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
