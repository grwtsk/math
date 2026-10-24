# shiftFunctorZero'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6eb27fde4ad558ed7037152658d6755478cd00ad950dd15b496d2a60142177f",
  "kind": "def",
  "lexical_name": "shiftFunctorZero'",
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
  "slug": "shiftfunctorzero--1457df5537e3e3944a8c3140",
  "source": {
    "blob": "6afd1d622e6ba1d1ff78071012195146c7c2c363",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1457df5537e3e3944a8c31404a397fa942a27486c636da95eafde64899c571a6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6eb27fde4ad558ed7037152658d6755478cd00ad950dd15b496d2a60142177f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shiftFunctorZero' (n : ℤ) (h : n = 0) :
    shiftFunctor C n ≅ 𝟭 _ :=
  NatIso.ofComponents (fun K => Hom.isoOfComponents
    (fun i => K.shiftFunctorObjXIso _ _ _ (by omega))
    (fun _ _ _ => by dsimp; simp [h])) (fun _ ↦ by ext; dsimp; simp)

/-- The compatibility of the shift functors on `CochainComplex C ℤ` with respect
to the addition of integers. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant8030aadef3ed0ac287a518cd53b9cec0557aabdfac20767bab1f56726726a9fe.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6afd1d622e6ba1d1ff78071012195146c7c2c363` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
