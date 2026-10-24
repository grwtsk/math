# mk_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3ced287-2496-fb28-6868-3be183c1ae1c",
  "kind": "lemma",
  "lexical_name": "mk_smul",
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
  "slug": "mk-smul--ab19ecd0a6d7fa95b96ef65b",
  "source": {
    "blob": "092950b3fbba5d940691d99f4be1d3f7c77bf418",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 112,
    "path": "GRWTSK/Algebra/GroupTheory/MulAction/Variantfc52b8d219410d8566f48fc50c1f0b9feb15f29059ec54938ba6dc0976bddb12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab19ecd0a6d7fa95b96ef65b83dbb04b3ec765bbf95eb095736a67f0a231d99e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MulAction/Variantfc52b8d219410d8566f48fc50c1f0b9feb15f29059ec54938ba6dc0976bddb12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3ced287-2496-fb28-6868-3be183c1ae1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mk_smul (g : M') (hg : g ∈ S) (a : α) : (⟨g, hg⟩ : S) • a = g • a := rfl

end SMul
end MulOneClass

variable [Monoid M']

/-- The action by a submonoid is the action by the underlying monoid. -/
@[to_additive
      /-- The additive action by an `AddSubmonoid` is the action by the underlying `AddMonoid`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MulAction/Variantfc52b8d219410d8566f48fc50c1f0b9feb15f29059ec54938ba6dc0976bddb12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MulAction/Variantfc52b8d219410d8566f48fc50c1f0b9feb15f29059ec54938ba6dc0976bddb12.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `092950b3fbba5d940691d99f4be1d3f7c77bf418` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
