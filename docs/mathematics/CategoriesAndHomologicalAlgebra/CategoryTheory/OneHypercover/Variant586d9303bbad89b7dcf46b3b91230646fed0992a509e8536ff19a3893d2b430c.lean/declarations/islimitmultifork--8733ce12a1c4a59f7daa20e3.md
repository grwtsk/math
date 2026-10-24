# isLimitMultifork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02088a085fd57412cd5094df8037d9926a23c55495b50f275903675eae2101c2",
  "kind": "def",
  "lexical_name": "isLimitMultifork",
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
  "slug": "islimitmultifork--8733ce12a1c4a59f7daa20e3",
  "source": {
    "blob": "b563e46e301338f7394357cdd0e776a0a288fe9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 214,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variant586d9303bbad89b7dcf46b3b91230646fed0992a509e8536ff19a3893d2b430c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8733ce12a1c4a59f7daa20e3f364844dfd7a5d17169555604a7d1c15e28192f3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variant586d9303bbad89b7dcf46b3b91230646fed0992a509e8536ff19a3893d2b430c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02088a085fd57412cd5094df8037d9926a23c55495b50f275903675eae2101c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isLimitMultifork : IsLimit (E.multifork F.1) :=
  Multifork.IsLimit.mk _ (fun c => multiforkLift c) (fun c => multiforkLift_map c) (by
    intro c m hm
    apply F.cond.hom_ext_ofArrows _ E.mem₀
    intro i₀
    dsimp only
    rw [multiforkLift_map]
    exact hm i₀)

end

end OneHypercover

namespace Cover

variable {X : C} (S : J.Cover X)

/-- The tautological 1-pre-hypercover induced by `S : J.Cover X`. Its index type `I₀`
is given by `S.Arrow` (i.e. all the morphisms in the sieve `S`), while `I₁` is given
by all possible pullback cones. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variant586d9303bbad89b7dcf46b3b91230646fed0992a509e8536ff19a3893d2b430c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variant586d9303bbad89b7dcf46b3b91230646fed0992a509e8536ff19a3893d2b430c.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b563e46e301338f7394357cdd0e776a0a288fe9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
