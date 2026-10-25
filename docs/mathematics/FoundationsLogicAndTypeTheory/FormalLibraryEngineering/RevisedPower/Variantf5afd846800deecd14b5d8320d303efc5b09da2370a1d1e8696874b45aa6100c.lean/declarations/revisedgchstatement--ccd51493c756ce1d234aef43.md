# RevisedGCHStatement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9821698ef4e93e84a243af393bed17bd61f38f05daee981ae1993fc17f05e22b",
  "kind": "def",
  "lexical_name": "RevisedGCHStatement",
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
  "slug": "revisedgchstatement--ccd51493c756ce1d234aef43",
  "source": {
    "blob": "53b27f3808b9d5e0ebdb29bad323d7406ce51d65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RevisedPower/Variantf5afd846800deecd14b5d8320d303efc5b09da2370a1d1e8696874b45aa6100c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ccd51493c756ce1d234aef437e51e052ed08199864832687354f72ca1f3c22af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RevisedPower/Variantf5afd846800deecd14b5d8320d303efc5b09da2370a1d1e8696874b45aa6100c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9821698ef4e93e84a243af393bed17bd61f38f05daee981ae1993fc17f05e22b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RevisedGCHStatement : Prop :=
  ∀ μ : Cardinal.{u}, μ.IsStrongLimit → ℵ₀ < μ →
    ∀ lam : Cardinal.{u}, μ ≤ lam →
      ∃ κ : Cardinal.{u}, κ < μ ∧
        ∀ theta : Cardinal.{u}, theta.IsRegular → κ ≤ theta → theta < μ →
          RevisedPowerEquals lam theta

/-- Downward closure admits smaller restrictions, including the empty one;
the original exact-cardinality predicate is deliberately not preserved. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RevisedPower/Variantf5afd846800deecd14b5d8320d303efc5b09da2370a1d1e8696874b45aa6100c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RevisedPower/Variantf5afd846800deecd14b5d8320d303efc5b09da2370a1d1e8696874b45aa6100c.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53b27f3808b9d5e0ebdb29bad323d7406ce51d65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
