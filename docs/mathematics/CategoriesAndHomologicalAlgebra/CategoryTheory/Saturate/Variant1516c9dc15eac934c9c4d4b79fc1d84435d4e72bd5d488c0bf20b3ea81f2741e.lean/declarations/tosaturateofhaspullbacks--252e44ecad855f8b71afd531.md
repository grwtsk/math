# toSaturateOfHasPullbacks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72f009734e5e30aae4cd117b26de77a559c94ff075e7665e155d085ef725416d",
  "kind": "def",
  "lexical_name": "toSaturateOfHasPullbacks",
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
  "slug": "tosaturateofhaspullbacks--252e44ecad855f8b71afd531",
  "source": {
    "blob": "f2537e58f3e56f4f94bd3848f54290bd5cda707c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 77,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant1516c9dc15eac934c9c4d4b79fc1d84435d4e72bd5d488c0bf20b3ea81f2741e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:252e44ecad855f8b71afd531ccf5b3ee6f1cf948930232ab2f9446865e93109a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant1516c9dc15eac934c9c4d4b79fc1d84435d4e72bd5d488c0bf20b3ea81f2741e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72f009734e5e30aae4cd117b26de77a559c94ff075e7665e155d085ef725416d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toSaturateOfHasPullbacks {S : C} (E : PreZeroHypercover S) [E.HasPullbacks] :
    E.toPreOneHypercover ⟶ E.saturate where
  s₀ i := i
  h₀ i := 𝟙 _
  s₁ {i j} k := ⟨pullback (E.f i) (E.f j), _, _, pullback.condition⟩
  h₁ {i j} k := 𝟙 _

set_option backward.isDefEq.respectTransparency false in
/-- If `E` has pairwise pullbacks, this is the canonical map to the minimal `1`-hypercover
from the saturation. -/
@[simps]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant1516c9dc15eac934c9c4d4b79fc1d84435d4e72bd5d488c0bf20b3ea81f2741e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant1516c9dc15eac934c9c4d4b79fc1d84435d4e72bd5d488c0bf20b3ea81f2741e.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2537e58f3e56f4f94bd3848f54290bd5cda707c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
