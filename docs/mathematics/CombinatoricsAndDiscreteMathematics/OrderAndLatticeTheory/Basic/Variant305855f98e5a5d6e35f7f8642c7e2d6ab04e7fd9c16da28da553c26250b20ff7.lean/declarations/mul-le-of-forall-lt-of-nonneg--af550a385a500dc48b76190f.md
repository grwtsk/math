# mul_le_of_forall_lt_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39478dc1-300a-83fc-062e-dbe031bb7149",
  "kind": "lemma",
  "lexical_name": "mul_le_of_forall_lt_of_nonneg",
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
  "slug": "mul-le-of-forall-lt-of-nonneg--af550a385a500dc48b76190f",
  "source": {
    "blob": "c28ef54b53b867bb20874d89c972ff2c79371276",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 637,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant305855f98e5a5d6e35f7f8642c7e2d6ab04e7fd9c16da28da553c26250b20ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af550a385a500dc48b76190f34b8b7981fa52c3afbc84d2063c8a69065b1d473",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant305855f98e5a5d6e35f7f8642c7e2d6ab04e7fd9c16da28da553c26250b20ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39478dc1-300a-83fc-062e-dbe031bb7149`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 637–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_le_of_forall_lt_of_nonneg {a b c : α} (ha : 0 ≤ a) (hc : 0 ≤ c)
    (h : ∀ a' ≥ 0, a' < a → ∀ b' ≥ 0, b' < b → a' * b' ≤ c) : a * b ≤ c := by
  refine le_of_forall_lt_imp_le_of_dense fun d d_ab ↦ ?_
  rcases lt_or_le d 0 with hd | hd
  · exact hd.le.trans hc
  obtain ⟨a', ha', d_ab⟩ := exists_lt_mul_left_of_nonneg ha hd d_ab
  obtain ⟨b', hb', d_ab⟩ := exists_lt_mul_right_of_nonneg ha'.1 hd d_ab
  exact d_ab.le.trans (h a' ha'.1 ha'.2 b' hb'.1 hb'.2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant305855f98e5a5d6e35f7f8642c7e2d6ab04e7fd9c16da28da553c26250b20ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant305855f98e5a5d6e35f7f8642c7e2d6ab04e7fd9c16da28da553c26250b20ff7.lean#L637).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c28ef54b53b867bb20874d89c972ff2c79371276` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
