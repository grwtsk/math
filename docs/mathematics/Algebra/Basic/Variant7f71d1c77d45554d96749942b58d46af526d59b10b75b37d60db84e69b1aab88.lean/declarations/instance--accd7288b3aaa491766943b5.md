# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81f3748a60fabf7195702f26ed1307de3437d91141ef458cb3dbb13909fcceca",
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
  "slug": "instance--accd7288b3aaa491766943b5",
  "source": {
    "blob": "53041e618e1f678d5e628dd16224abd21b84ebbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 579,
    "line": 566,
    "path": "GRWTSK/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:accd7288b3aaa491766943b57403a364a6140227712b6c8a2d27630b8e85a69e",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81f3748a60fabf7195702f26ed1307de3437d91141ef458cb3dbb13909fcceca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–579.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (R : Type*) [CommRing R] [IsDomain R] [IsDiscreteValuationRing R] :
    IsHausdorff (maximalIdeal R) R where
  haus' x hx := by
    obtain ⟨ϖ, hϖ⟩ := exists_irreducible R
    simp only [← Ideal.one_eq_top, smul_eq_mul, mul_one, SModEq.zero, hϖ.maximalIdeal_eq,
      Ideal.span_singleton_pow, Ideal.mem_span_singleton, ← addVal_le_iff_dvd, hϖ.addVal_pow] at hx
    rwa [← addVal_eq_top_iff, ENat.eq_top_iff_forall_ge]

noncomputable section toEuclideanDomain
variable {R : Type*} [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]

/-- A noncomputable quotient to define the Euclidean domain structure. The GCD algorithm only takes
two steps to terminate. Given `GCD(x,y)`, if `x ∣ y` then `y%x = 0` so we're done in one step;
otherwise `y%x = y` and then `GCD(x,y) = GCD(y,x)` which brings us back to the first case. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53041e618e1f678d5e628dd16224abd21b84ebbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
