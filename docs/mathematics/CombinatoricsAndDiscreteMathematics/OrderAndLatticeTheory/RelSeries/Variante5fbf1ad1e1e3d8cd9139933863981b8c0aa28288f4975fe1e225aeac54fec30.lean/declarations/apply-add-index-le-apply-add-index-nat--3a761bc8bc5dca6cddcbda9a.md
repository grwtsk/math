# apply_add_index_le_apply_add_index_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1dfb5ca4-fb52-cef7-3210-f9372b41f2da",
  "kind": "lemma",
  "lexical_name": "apply_add_index_le_apply_add_index_nat",
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
  "slug": "apply-add-index-le-apply-add-index-nat--3a761bc8bc5dca6cddcbda9a",
  "source": {
    "blob": "070f8fcd13997fb5c1833e7784067074741b2f47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1025,
    "line": 1009,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variante5fbf1ad1e1e3d8cd9139933863981b8c0aa28288f4975fe1e225aeac54fec30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a761bc8bc5dca6cddcbda9a094bb32ee032a05448e097d308918aa7964fa26f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variante5fbf1ad1e1e3d8cd9139933863981b8c0aa28288f4975fe1e225aeac54fec30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1dfb5ca4-fb52-cef7-3210-f9372b41f2da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1009–1025.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_add_index_le_apply_add_index_nat (p : LTSeries ℕ) (i j : Fin (p.length + 1))
    (hij : i ≤ j) : p i + j ≤ p j + i := by
  have ⟨i, hi⟩ := i
  have ⟨j, hj⟩ := j
  simp only [Fin.mk_le_mk] at hij
  simp only at *
  induction j, hij using Nat.le_induction with
  | base => simp
  | succ j _hij ih =>
    specialize ih (Nat.lt_of_succ_lt hj)
    have step : p ⟨j, _⟩ < p ⟨j + 1, _⟩ := p.step ⟨j, by lia⟩
    lia

/--
In ℤ, two entries in an `LTSeries` differ by at least the difference of their indices.
(Expressed in a way that avoids subtraction).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variante5fbf1ad1e1e3d8cd9139933863981b8c0aa28288f4975fe1e225aeac54fec30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variante5fbf1ad1e1e3d8cd9139933863981b8c0aa28288f4975fe1e225aeac54fec30.lean#L1009).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `070f8fcd13997fb5c1833e7784067074741b2f47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
