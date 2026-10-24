# Algebra.IsAlgebraic.algHomEquivAlgHomOfSplits_apply_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9880ea62-1f5d-cbec-1687-b320dd3b3ff8",
  "kind": "theorem",
  "lexical_name": "Algebra.IsAlgebraic.algHomEquivAlgHomOfSplits_apply_apply",
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
  "slug": "algebra-isalgebraic-alghomequivalghomofsplits-apply-apply--01286bb0b88001889ffd985d",
  "source": {
    "blob": "99397430c4ea7f16acde07d261420060dc76840d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 485,
    "path": "GRWTSK/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01286bb0b88001889ffd985d16950e727485364b4d52aab7d881acb90f4e882d",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9880ea62-1f5d-cbec-1687-b320dd3b3ff8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Algebra.IsAlgebraic.algHomEquivAlgHomOfSplits_apply_apply (L : Type*) [Field L]
    [Algebra F L] [Algebra L A] [IsScalarTower F L A]
    (hL : ∀ x : K, (minpoly F x).Splits (algebraMap F L)) (f : K →ₐ[F] L) (x : K) :
    Algebra.IsAlgebraic.algHomEquivAlgHomOfSplits A L hL f x = algebraMap L A (f x) := rfl

end Algebra.IsAlgebraic

/-- Over an algebraically closed field of characteristic zero a necessary and sufficient condition
for the set of roots of a nonzero polynomial `f` to be a subset of the set of roots of `g` is that
`f` divides `f.derivative * g`. Over an integral domain, this is a sufficient but not necessary
condition. See `isRoot_of_isRoot_of_dvd_derivative_mul` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99397430c4ea7f16acde07d261420060dc76840d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
