# max_erase_ne_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "740d03f92df543b530302dc019798485e4481138",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/950931cc4f2a814c60a11bc6ae012c1defb3f0cc70068549d1363d54259d632f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f1d5a0e-9e18-4dcb-0e83-303ba250d354",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:852498c2-be5b-f9c2-0980-57f078042578",
  "kind": "theorem",
  "lexical_name": "max_erase_ne_self",
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
  "slug": "max-erase-ne-self--3dc32768ec7e111e0589bd7a",
  "source": {
    "blob": "740d03f92df543b530302dc019798485e4481138",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 384,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Max/Variant950931cc4f2a814c60a11bc6ae012c1defb3f0cc70068549d1363d54259d632f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dc32768ec7e111e0589bd7a6ea2e4c1fcccc780ee3a1f586dbceafd34624a80",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Max/Variant950931cc4f2a814c60a11bc6ae012c1defb3f0cc70068549d1363d54259d632f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:852498c2-be5b-f9c2-0980-57f078042578`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem max_erase_ne_self {s : Finset α} : (s.erase x).max ≠ x := by
  by_cases s0 : (s.erase x).Nonempty
  · refine ne_of_eq_of_ne (coe_max' s0).symm ?_
    exact WithBot.coe_eq_coe.not.mpr (max'_erase_ne_self _)
  · rw [not_nonempty_iff_eq_empty.mp s0, max_empty]
    exact WithBot.bot_ne_coe

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Max/Variant950931cc4f2a814c60a11bc6ae012c1defb3f0cc70068549d1363d54259d632f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Max/Variant950931cc4f2a814c60a11bc6ae012c1defb3f0cc70068549d1363d54259d632f.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `740d03f92df543b530302dc019798485e4481138` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
