# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToAList.Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.Finsupp.toAList_lookupFinsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60ad5436-ad53-a87a-b206-5782b2f031ec",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToAList.Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.Finsupp.toAList_lookupFinsupp",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-to--e9517b68b1cdeec643daacb9",
  "source": {
    "blob": "8e8cbbbdb76c0d38130d97f687b8c5c9d91aca4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 118,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9517b68b1cdeec643daacb9dfeced8af37eb03758856815dd423a64095543cd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60ad5436-ad53-a87a-b206-5782b2f031ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToAList.Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.Finsupp.toAList_lookupFinsupp (f : α →₀ M) : f.toAList.lookupFinsupp = f := by
  ext a
  classical
    by_cases h : f a = 0
    · suffices f.toAList.lookup a = none by simp [h, this]
      simp [lookup_eq_none, h]
    · suffices f.toAList.lookup a = some (f a) by simp [h, this]
      apply mem_lookup_iff.2
      simpa using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant919c6d15fa7868124aafc21e45f77543a27ba3cf4e26a855389864b677081fe5.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e8cbbbdb76c0d38130d97f687b8c5c9d91aca4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
