# zmultiplesQuotientStabilizerEquiv_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a11bde8-4e65-3015-1e2b-3e7de9f59405",
  "kind": "theorem",
  "lexical_name": "zmultiplesQuotientStabilizerEquiv_symm_apply",
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
  "slug": "zmultiplesquotientstabilizerequiv-symm-apply--00c55d9ee153a2077c4468aa",
  "source": {
    "blob": "951a09f8bb0a7a227dbf1aaf4cd7b3830cc586d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 95,
    "path": "GRWTSK/Algebra/GroupTheory/QuotientGroup/Varianta8c3b003f58bc2b8910fdbeef0f6ba48d8d5bcaa9422b688d3ac10ace535abc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00c55d9ee153a2077c4468aad8bb77d4d5beafd4fd003cd2903c319eadbf47ee",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/QuotientGroup/Varianta8c3b003f58bc2b8910fdbeef0f6ba48d8d5bcaa9422b688d3ac10ace535abc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a11bde8-4e65-3015-1e2b-3e7de9f59405`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zmultiplesQuotientStabilizerEquiv_symm_apply (n : ZMod (minimalPeriod (a +ᵥ ·) b)) :
    (zmultiplesQuotientStabilizerEquiv a b).symm n =
      (cast n : ℤ) • (⟨a, mem_zmultiples a⟩ : zmultiples a) :=
  rfl

end AddAction

namespace MulAction

open AddAction Subgroup AddSubgroup Function

variable {α β : Type*} [Group α] (a : α) [MulAction α β] (b : β)

/-- The quotient `(a ^ ℤ) ⧸ (stabilizer b)` is cyclic of order `minimalPeriod ((•) a) b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/QuotientGroup/Varianta8c3b003f58bc2b8910fdbeef0f6ba48d8d5bcaa9422b688d3ac10ace535abc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/QuotientGroup/Varianta8c3b003f58bc2b8910fdbeef0f6ba48d8d5bcaa9422b688d3ac10ace535abc9.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `951a09f8bb0a7a227dbf1aaf4cd7b3830cc586d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
