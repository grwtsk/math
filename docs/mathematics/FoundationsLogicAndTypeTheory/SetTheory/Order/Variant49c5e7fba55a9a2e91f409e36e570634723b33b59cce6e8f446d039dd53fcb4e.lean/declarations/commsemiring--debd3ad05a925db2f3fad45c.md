# commSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3cf91b7e636103df44cef36f4c7a2569ecd52f3ef28497c485c273dbee98e42a",
  "kind": "instance",
  "lexical_name": "commSemiring",
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
  "slug": "commsemiring--debd3ad05a925db2f3fad45c",
  "source": {
    "blob": "091c2bbaf40772e88363a0b09de99d5040f6b25e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 218,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant49c5e7fba55a9a2e91f409e36e570634723b33b59cce6e8f446d039dd53fcb4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:debd3ad05a925db2f3fad45cbf74481379d3350cf140d879010e58aa91b59619",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant49c5e7fba55a9a2e91f409e36e570634723b33b59cce6e8f446d039dd53fcb4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3cf91b7e636103df44cef36f4c7a2569ecd52f3ef28497c485c273dbee98e42a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance commSemiring : CommSemiring Cardinal.{u} where
  zero_add a := inductionOn a fun α => mk_congr <| Equiv.emptySum _ α
  add_zero a := inductionOn a fun α => mk_congr <| Equiv.sumEmpty α _
  add_assoc a b c := inductionOn₃ a b c fun α β γ => mk_congr <| Equiv.sumAssoc α β γ
  add_comm a b := inductionOn₂ a b fun α β => mk_congr <| Equiv.sumComm α β
  zero_mul a := inductionOn a fun _ => mk_eq_zero _
  mul_zero a := inductionOn a fun _ => mk_eq_zero _
  one_mul a := inductionOn a fun α => mk_congr <| Equiv.uniqueProd α _
  mul_one a := inductionOn a fun α => mk_congr <| Equiv.prodUnique α _
  mul_assoc a b c := inductionOn₃ a b c fun α β γ => mk_congr <| Equiv.prodAssoc α β γ
  mul_comm a b := inductionOn₂ a b fun α β => mk_congr <| Equiv.prodComm α β
  left_distrib a b c := inductionOn₃ a b c fun α β γ => mk_congr <| Equiv.prodSumDistrib α β γ
  right_distrib a b c := inductionOn₃ a b c fun α β γ => mk_congr <| Equiv.sumProdDistrib α β γ
  nsmul := nsmulRec
  npow n c := c ^ (n : Cardinal)
  npow_zero := power_zero
  npow_succ n c := by simp_rw [HPow.hPow, Pow.pow]; rw [cast_succ, power_add, power_one]
  natCast n := lift #(Fin n)
  natCast_zero := rfl
  natCast_succ n := cast_succ n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant49c5e7fba55a9a2e91f409e36e570634723b33b59cce6e8f446d039dd53fcb4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant49c5e7fba55a9a2e91f409e36e570634723b33b59cce6e8f446d039dd53fcb4e.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `091c2bbaf40772e88363a0b09de99d5040f6b25e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
