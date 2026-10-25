# observerCycleReducer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71651f03941aa8c3ed8612505a20b8a4b276a6b545a89f535ef4548874e72060",
  "kind": "def",
  "lexical_name": "observerCycleReducer",
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
  "slug": "observercyclereducer--6fd18c3136d1188c14d1a2b5",
  "source": {
    "blob": "39b5280824982b3cc8c88d3014c350d3137310d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 351,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalObserverTests/Variant2a47cbe8db1c8565bac9fecb98f959935d42bf7c2182c8a873504afeca1711a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6fd18c3136d1188c14d1a2b50e14c40992c6e14b74fcc86542e98197dd3e69f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalObserverTests/Variant2a47cbe8db1c8565bac9fecb98f959935d42bf7c2182c8a873504afeca1711a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71651f03941aa8c3ed8612505a20b8a4b276a6b545a89f535ef4548874e72060`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def observerCycleReducer :
    PermutationObserverReducer observerCycleGlobal PUnit.unit where
  Local := Fin 3
  localFintype := inferInstance
  localDecidableEq := inferInstance
  reduce := observerModThree
  reduce_surjective := by
    intro y
    refine ⟨⟨y.val, Nat.lt_trans y.isLt (by decide)⟩, ?_⟩
    apply Fin.ext
    simp [observerModThree, Nat.mod_eq_of_lt y.isLt]
  localStep := observerCycle3
  localObserve := id
  step_commute := by
    intro x
    fin_cases x <;> apply Fin.ext <;>
      norm_num [observerCycleGlobal, observerCycle6,
        observerCycle3, observerModThree]
  observe_commute := by
    intro x
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalObserverTests/Variant2a47cbe8db1c8565bac9fecb98f959935d42bf7c2182c8a873504afeca1711a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalObserverTests/Variant2a47cbe8db1c8565bac9fecb98f959935d42bf7c2182c8a873504afeca1711a9.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39b5280824982b3cc8c88d3014c350d3137310d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
