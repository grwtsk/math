# rel_act_of_rel_of_rel_act

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5160320f-9fb6-38e4-96d6-fca657fe3621",
  "kind": "theorem",
  "lexical_name": "rel_act_of_rel_of_rel_act",
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
  "slug": "rel-act-of-rel-of-rel-act--7652f13cb1e6a2a0ba14e775",
  "source": {
    "blob": "3f29a5fe8424ff089bcf6b290f3e419dd42b7e30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 205,
    "path": "GRWTSK/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7652f13cb1e6a2a0ba14e7753db66ae1c01d47538022eaea1dfb1ac99044bdb5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5160320f-9fb6-38e4-96d6-fca657fe3621`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rel_act_of_rel_of_rel_act (ab : r a b) (rr : r c (μ m a)) : r c (μ m b) :=
  _root_.trans rr (act_rel_act_of_rel _ ab)
#align rel_act_of_rel_of_rel_act rel_act_of_rel_of_rel_act

end Trans

end Covariant

--  Lemma with 4 elements.
section MEqN

variable {M N μ r} {mu : N → N → N} [IsTrans N r] [i : CovariantClass N N mu r]
  [i' : CovariantClass N N (swap mu) r] {a b c d : N}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f29a5fe8424ff089bcf6b290f3e419dd42b7e30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
