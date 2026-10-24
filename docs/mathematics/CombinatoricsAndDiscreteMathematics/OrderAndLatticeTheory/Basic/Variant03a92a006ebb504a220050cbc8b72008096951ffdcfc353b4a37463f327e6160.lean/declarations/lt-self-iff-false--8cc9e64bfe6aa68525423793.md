# lt_self_iff_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f70f9a12-6b2f-063c-3052-d07cde05a14d",
  "kind": "lemma",
  "lexical_name": "lt_self_iff_false",
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
  "slug": "lt-self-iff-false--8cc9e64bfe6aa68525423793",
  "source": {
    "blob": "117b17c9ef1d2e37b2f63ca8f5c70fd38acda001",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 128,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant03a92a006ebb504a220050cbc8b72008096951ffdcfc353b4a37463f327e6160.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cc9e64bfe6aa68525423793062432113fbe4716a494ab96b1c55e8ffa98ad1f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant03a92a006ebb504a220050cbc8b72008096951ffdcfc353b4a37463f327e6160.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f70f9a12-6b2f-063c-3052-d07cde05a14d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma lt_self_iff_false (x : α) : x < x ↔ False := ⟨lt_irrefl x, False.elim⟩

alias LE.le.trans := le_trans
alias LE.le.trans' := le_trans'
alias LT.lt.trans := lt_trans
alias LT.lt.trans' := lt_trans'
alias LE.le.trans_lt := lt_of_le_of_lt
alias LE.le.trans_lt' := lt_of_le_of_lt'
alias LT.lt.trans_le := lt_of_lt_of_le
alias LT.lt.trans_le' := lt_of_lt_of_le'
alias LE.le.trans_eq := le_of_le_of_eq
alias LE.le.trans_eq' := le_of_le_of_eq'
alias LT.lt.trans_eq := lt_of_lt_of_eq
alias LT.lt.trans_eq' := lt_of_lt_of_eq'
alias Eq.trans_le := le_of_eq_of_le
alias Eq.trans_ge := le_of_eq_of_le'
alias Eq.trans_lt := lt_of_eq_of_lt
alias Eq.trans_gt := lt_of_eq_of_lt'
alias LE.le.lt_of_not_le := lt_of_le_not_le
alias LE.le.lt_or_eq_dec := Decidable.lt_or_eq_of_le
alias LT.lt.le := le_of_lt
alias LT.lt.ne := ne_of_lt
alias Eq.le := le_of_eq
@[inherit_doc ge_of_eq] alias Eq.ge := ge_of_eq
alias LT.lt.asymm := lt_asymm
alias LT.lt.not_lt := lt_asymm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant03a92a006ebb504a220050cbc8b72008096951ffdcfc353b4a37463f327e6160.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant03a92a006ebb504a220050cbc8b72008096951ffdcfc353b4a37463f327e6160.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `117b17c9ef1d2e37b2f63ca8f5c70fd38acda001` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
