# goodm_of_rule4

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b3b42c1-74b9-3b91-679c-223de98742cc",
  "kind": "theorem",
  "lexical_name": "goodm_of_rule4",
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
  "slug": "goodm-of-rule4--b7d2bd46d846b72fec4a8bd8",
  "source": {
    "blob": "ad8e61492ae9b19455fdab1bc3d0b7851e213364",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 180,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7d2bd46d846b72fec4a8bd802e0d8743f6a95203f7199aea3219da1fd1df9fa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b3b42c1-74b9-3b91-679c-223de98742cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goodm_of_rule4 (as bs : Miustr) (h₁ : Derivable (as ++ ↑[U, U] ++ bs))
    (h₂ : Goodm (as ++ ↑[U, U] ++ bs)) : Goodm (as ++ bs) := by
  cases' h₂ with mhead nmtail
  have k : as ≠ nil := by rintro rfl; contradiction
  constructor
  · cases as
    · contradiction
    exact mhead
  · contrapose! nmtail
    rcases exists_cons_of_ne_nil k with ⟨x, xs, rfl⟩
    -- Porting note: `simp_rw [cons_append]` didn't work
    rw [cons_append] at nmtail; rw [cons_append, cons_append]
    dsimp only [tail] at nmtail ⊢
    simpa using nmtail
#align miu.goodm_of_rule4 Miu.goodm_of_rule4

/-- Any derivable string must begin with `M` and have no `M` in its tail.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad8e61492ae9b19455fdab1bc3d0b7851e213364` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
