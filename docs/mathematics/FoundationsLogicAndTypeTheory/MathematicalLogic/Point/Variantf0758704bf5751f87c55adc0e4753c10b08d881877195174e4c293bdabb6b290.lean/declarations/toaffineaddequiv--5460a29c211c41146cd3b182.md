# toAffineAddEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60138def41f43e6bc492813b8e7b14d55b0ca488d9f26a4c3043ccccd58174f4",
  "kind": "def",
  "lexical_name": "toAffineAddEquiv",
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
  "slug": "toaffineaddequiv--5460a29c211c41146cd3b182",
  "source": {
    "blob": "700a6ef537038d95b67f7cadcf73581f590ee6a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 587,
    "line": 572,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variantf0758704bf5751f87c55adc0e4753c10b08d881877195174e4c293bdabb6b290.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5460a29c211c41146cd3b1821963475cc81ae359e371359490f3673ab61fea39",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variantf0758704bf5751f87c55adc0e4753c10b08d881877195174e4c293bdabb6b290.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60138def41f43e6bc492813b8e7b14d55b0ca488d9f26a4c3043ccccd58174f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 572–587.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toAffineAddEquiv [DecidableEq F] : W.Point ≃+ W.toAffine.Point where
  toFun := toAffineLift
  invFun := fromAffine
  left_inv := by
    rintro @⟨⟨P⟩, hP⟩
    by_cases hPz : P z = 0
    · rw [Point.ext_iff, toAffineLift_eq, toAffine_of_Z_eq_zero hPz]
      exact Quotient.eq.mpr <| Setoid.symm <| equiv_zero_of_Z_eq_zero hP hPz
    · rw [Point.ext_iff, toAffineLift_eq, toAffine_of_Z_ne_zero hP hPz]
      exact Quotient.eq.mpr <| Setoid.symm <| equiv_some_of_Z_ne_zero hPz
  right_inv := by
    rintro (_ | _)
    · rw [← Affine.Point.zero_def, fromAffine_zero, toAffineLift_zero]
    · rw [fromAffine_some, toAffineLift_some]
  map_add' := toAffineLift_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variantf0758704bf5751f87c55adc0e4753c10b08d881877195174e4c293bdabb6b290.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variantf0758704bf5751f87c55adc0e4753c10b08d881877195174e4c293bdabb6b290.lean#L572).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `700a6ef537038d95b67f7cadcf73581f590ee6a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
