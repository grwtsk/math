# order_ineq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7d45cee-6653-e17d-6171-64cd4065f110",
  "kind": "theorem",
  "lexical_name": "order_ineq",
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
  "slug": "order-ineq--66f97bd6c69cdb2a7f023177",
  "source": {
    "blob": "29714364f98fc2f7218391db3068cee0d33b26a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 506,
    "path": "GRWTSK/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66f97bd6c69cdb2a7f0231778327515ac379f26ac9287797090e6eb1d1e88612",
  "verification": {
    "reference": "docs/verification/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7d45cee-6653-e17d-6171-64cd4065f110`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem order_ineq (p' : ℕ) (h : lucasLehmerResidue (p' + 2) = 0) :
    2 ^ (p' + 2) < (q (p' + 2) : ℕ) ^ 2 :=
  calc
    2 ^ (p' + 2) = orderOf (ωUnit (p' + 2)) := (order_ω p' h).symm
    _ ≤ Fintype.card (X (q (p' + 2)))ˣ := orderOf_le_card_univ
    _ < (q (p' + 2) : ℕ) ^ 2 := card_units_lt (Nat.lt_of_succ_lt (two_lt_q _))
#align lucas_lehmer.order_ineq LucasLehmer.order_ineq

end LucasLehmer

export LucasLehmer (LucasLehmerTest lucasLehmerResidue)

open LucasLehmer

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29714364f98fc2f7218391db3068cee0d33b26a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
