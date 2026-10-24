# filterMap_join

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6846ab5a-e7c5-179c-973a-42abb55ae8e7",
  "kind": "theorem",
  "lexical_name": "filterMap_join",
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
  "slug": "filtermap-join--f41bb6b0f81f2aebf5dc9c91",
  "source": {
    "blob": "fe5e40056559b8a11cdf2867c2d713230ab28f4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 106,
    "path": "GRWTSK/Topology/GeneralTopology/Bind/Variantbda95bec9f5cbd28669b288309936f5aa54e3069f4dc116060542c20ce877fef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f41bb6b0f81f2aebf5dc9c91752a871de028df2329e2b854df25a1e7c788ef15",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bind/Variantbda95bec9f5cbd28669b288309936f5aa54e3069f4dc116060542c20ce877fef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6846ab5a-e7c5-179c-973a-42abb55ae8e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filterMap_join (S : Multiset (Multiset α)) (f : α → Option β) :
    filterMap f (join S) = join (map (filterMap f) S) := by
  induction S using Multiset.induction with
  | empty => simp
  | cons _ _ ih => simp [ih]

/-! ### Bind -/


section Bind

variable (a : α) (s t : Multiset α) (f g : α → Multiset β)

/-- `s.bind f` is the monad bind operation, defined as `(s.map f).join`. It is the union of `f a` as
`a` ranges over `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bind/Variantbda95bec9f5cbd28669b288309936f5aa54e3069f4dc116060542c20ce877fef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bind/Variantbda95bec9f5cbd28669b288309936f5aa54e3069f4dc116060542c20ce877fef.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe5e40056559b8a11cdf2867c2d713230ab28f4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
