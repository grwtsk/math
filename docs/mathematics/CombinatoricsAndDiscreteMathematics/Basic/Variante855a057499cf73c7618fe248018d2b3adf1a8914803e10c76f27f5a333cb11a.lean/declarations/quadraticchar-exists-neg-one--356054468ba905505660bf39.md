# quadraticChar_exists_neg_one'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6389799-b514-8e56-bcdb-7e08f0487a16",
  "kind": "lemma",
  "lexical_name": "quadraticChar_exists_neg_one'",
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
  "slug": "quadraticchar-exists-neg-one--356054468ba905505660bf39",
  "source": {
    "blob": "6b395c077040beb70a6e82cc2dbce1b9428da257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 176,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:356054468ba905505660bf3923c518a2df1f23638d3fd5b5b76c423968c3e08b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6389799-b514-8e56-bcdb-7e08f0487a16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quadraticChar_exists_neg_one' (hF : ringChar F ≠ 2) : ∃ a : Fˣ, quadraticChar F a = -1 := by
  refine (fun ⟨a, ha⟩ ↦ ⟨IsUnit.unit ?_, ha⟩) (quadraticChar_exists_neg_one hF)
  contrapose ha
  exact ne_of_eq_of_ne ((quadraticChar F).map_nonunit ha) (mt zero_eq_neg.mp one_ne_zero)

/-- If `ringChar F = 2`, then `quadraticChar F` takes the value `1` on nonzero elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b395c077040beb70a6e82cc2dbce1b9428da257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
