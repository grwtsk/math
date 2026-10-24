# ediv_of_neg_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b5b92cd30f752cebe92841217a3d9baf4e3529c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 239,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9815779-22b3-3a18-21eb-394ee405b8e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4cfebc5d-2e72-75b2-8a25-98a154cdf8c7",
  "kind": "theorem",
  "lexical_name": "ediv_of_neg_of_pos",
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
  "slug": "ediv-of-neg-of-pos--f49ed0f3e42caeda11eb917e",
  "source": {
    "blob": "4b5b92cd30f752cebe92841217a3d9baf4e3529c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 239,
    "path": "GRWTSK/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f49ed0f3e42caeda11eb917e2279d5aacfde434c3fe678a0b6deb3117c5ca6b0",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cfebc5d-2e72-75b2-8a25-98a154cdf8c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ediv_of_neg_of_pos {a b : ℤ} (Ha : a < 0) (Hb : 0 < b) : ediv a b = -((-a - 1) / b + 1) :=
  match a, b, eq_negSucc_of_lt_zero Ha, eq_succ_of_zero_lt Hb with
  | _, _, ⟨m, rfl⟩, ⟨n, rfl⟩ => by
    rw [show (- -[m+1] : ℤ) = (m + 1 : ℤ) by rfl]; rw [add_sub_cancel]; rfl
#align int.div_of_neg_of_pos Int.ediv_of_neg_of_pos

#align int.div_nonneg Int.div_nonnegₓ -- int div alignment
#align int.div_neg' Int.ediv_neg'
#align int.div_one Int.div_oneₓ -- int div alignment
#align int.div_eq_zero_of_lt Int.div_eq_zero_of_ltₓ -- int div alignment

/-! ### mod -/

#align int.of_nat_mod Int.ofNat_mod_ofNat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b5b92cd30f752cebe92841217a3d9baf4e3529c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
