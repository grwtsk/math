# measurableEquivOfNotCountable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf4df312701ace42c4bb244421db9bf51782a43fb2ac076f20c06458d5d6228f",
  "kind": "def",
  "lexical_name": "measurableEquivOfNotCountable",
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
  "slug": "measurableequivofnotcountable--5ec509911c9f805294a973f0",
  "source": {
    "blob": "36445ca6cf962ffb3c79fae649fc48eb7ace49ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 897,
    "line": 892,
    "path": "GRWTSK/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ec509911c9f805294a973f043b60adab402db9b43a1e797ed832a1950ee4610",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf4df312701ace42c4bb244421db9bf51782a43fb2ac076f20c06458d5d6228f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 892–897.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def measurableEquivOfNotCountable (hα : ¬Countable α) (hβ : ¬Countable β) : α ≃ᵐ β :=
  (measurableEquivNatBoolOfNotCountable hα).trans (measurableEquivNatBoolOfNotCountable hβ).symm
#align polish_space.measurable_equiv_of_not_countable PolishSpace.measurableEquivOfNotCountable

/-- The **Borel Isomorphism Theorem**: If two Polish spaces have the same cardinality,
they are Borel isomorphic.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean#L892).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36445ca6cf962ffb3c79fae649fc48eb7ace49ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
