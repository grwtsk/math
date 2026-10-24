# IsLimit.ofReflectsConeTerminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37f2b9e9fa23dc559dd54523e87515985f28d3efe08aa6ffbdf427b8fad5c84c",
  "kind": "def",
  "lexical_name": "IsLimit.ofReflectsConeTerminal",
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
  "slug": "islimit-ofreflectsconeterminal--c44d15a593be901b8b1ab2b8",
  "source": {
    "blob": "49d87e8bffa831e76be3b00e82ff78b4d51dac23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 184,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante6074a58c40fc0a957961f2d1504b0d5d1c88ffdc9eb54e5f8f2d0285ac11994.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c44d15a593be901b8b1ab2b8e839663b7a55650f7e720b472e233c591165acea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante6074a58c40fc0a957961f2d1504b0d5d1c88ffdc9eb54e5f8f2d0285ac11994.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37f2b9e9fa23dc559dd54523e87515985f28d3efe08aa6ffbdf427b8fad5c84c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsLimit.ofReflectsConeTerminal {F : J ⥤ C} {F' : K ⥤ D} (G : Cone F ⥤ Cone F')
    [ReflectsLimit (Functor.empty.{0} _) G] {c : Cone F} (hc : IsLimit (G.obj c)) : IsLimit c :=
  (Cone.isLimitEquivIsTerminal _).symm <| (Cone.isLimitEquivIsTerminal _ hc).isTerminalOfObj _ _
#align category_theory.limits.is_limit.of_reflects_cone_terminal CategoryTheory.Limits.IsLimit.ofReflectsConeTerminal

/-- Given a cocone `c` over `F`, we can interpret the legs of `c` as costructured arrows
    `F.obj - ⟶ c.pt`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante6074a58c40fc0a957961f2d1504b0d5d1c88ffdc9eb54e5f8f2d0285ac11994.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante6074a58c40fc0a957961f2d1504b0d5d1c88ffdc9eb54e5f8f2d0285ac11994.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49d87e8bffa831e76be3b00e82ff78b4d51dac23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
