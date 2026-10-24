# count_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c62ae75-3ef6-c4da-4e2e-1c15de2c432e",
  "kind": "theorem",
  "lexical_name": "count_of",
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
  "slug": "count-of--f64d5e6d34a940c7a0c30a3c",
  "source": {
    "blob": "a50bfb0b40361936099dce818a245deb19c8297d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 64,
    "path": "GRWTSK/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f64d5e6d34a940c7a0c30a3c1d380e7c3216a9f5717b13a8f589b2c998618380",
  "verification": {
    "reference": "docs/verification/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c62ae75-3ef6-c4da-4e2e-1c15de2c432e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_of [DecidableEq α] (x y : α) :
    count x (of y) = Pi.mulSingle (M := fun _ => Multiplicative ℕ) x (Multiplicative.ofAdd 1) y :=
  by simp only [count, eq_comm, countP_of, ofAdd_zero, Pi.mulSingle_apply]

end FreeMonoid

namespace FreeAddMonoid

/-- `List.countP` as a bundled additive monoid homomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a50bfb0b40361936099dce818a245deb19c8297d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
