# prod_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc319435-230d-247a-e6aa-eb0ba423e48a",
  "kind": "lemma",
  "lexical_name": "prod_eq_one",
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
  "slug": "prod-eq-one--01ad1bc8aa21143e44fc6e6a",
  "source": {
    "blob": "7bb616b1943f511b299747ba3251c88694e8f9bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 184,
    "path": "GRWTSK/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01ad1bc8aa21143e44fc6e6a93a0b428db2bf9b75b5fb0a1d0f480bc2ac29eb5",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc319435-230d-247a-e6aa-eb0ba423e48a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma prod_eq_one (hl : ∀ x ∈ l, x = 1) : l.prod = 1 := by
  induction l with
  | nil => rfl
  | cons i l hil =>
    rw [List.prod_cons, hil fun x hx ↦ hl _ (mem_cons_of_mem i hx),
      hl _ mem_cons_self, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant3ab8db08e4648019c0508b8c0a6a18845a6bb07492d5d2bd923eb60dcaee1379.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bb616b1943f511b299747ba3251c88694e8f9bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
