# descent_obstruction_no_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:665aef14-a02e-33a8-df20-22f2d9916f64",
  "kind": "theorem",
  "lexical_name": "descent_obstruction_no_factorization",
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
  "slug": "descent-obstruction-no-factorization--c4bb6421b28ff3ea515e9c35",
  "source": {
    "blob": "3f396bffa58834045cdb051b8bab8ce04a058d40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 124,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant81aa68c74f18e64655778a3e05ea06903b25c421a1cc925247eb97bbac81af8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4bb6421b28ff3ea515e9c35829cfc3f52e0670a0a8119ea49eb25e4b86409d9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant81aa68c74f18e64655778a3e05ea06903b25c421a1cc925247eb97bbac81af8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:665aef14-a02e-33a8-df20-22f2d9916f64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem descent_obstruction_no_factorization {X Q Y : Type*} {carrier : X → Q}
    {target : X → Y} (obstruction : DescentObstruction carrier target) :
    ¬∃ recover : Q → Y, ∀ x, recover (carrier x) = target x := by
  rintro ⟨recover, exact⟩
  exact descent_obstruction_not_descends obstruction
    (descendsThrough_of_factorization recover exact)

/-- Quotient descent is equivalent to invariance under the given setoid relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant81aa68c74f18e64655778a3e05ea06903b25c421a1cc925247eb97bbac81af8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant81aa68c74f18e64655778a3e05ea06903b25c421a1cc925247eb97bbac81af8f.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f396bffa58834045cdb051b8bab8ce04a058d40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
