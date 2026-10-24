# isSimpleGroup_of_prime_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78f6e034-553b-53e6-9db0-9e094125b79e",
  "kind": "theorem",
  "lexical_name": "isSimpleGroup_of_prime_card",
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
  "slug": "issimplegroup-of-prime-card--505bb595ee575b581aeac7e6",
  "source": {
    "blob": "ecf625e54b46b367425daf33ac8da34d2308bc83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 169,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variant9cafb2941c1c48fec9b28e4fcec489be3cb504484129154d272a10770a4970ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:505bb595ee575b581aeac7e61d9655c27497de993a0715d3502ed28c9d159ab5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variant9cafb2941c1c48fec9b28e4fcec489be3cb504484129154d272a10770a4970ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78f6e034-553b-53e6-9db0-9e094125b79e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSimpleGroup_of_prime_card {p : ℕ} [hp : Fact p.Prime]
    (h : Nat.card α = p) : IsSimpleGroup α := by
  subst h
  have : Finite α := Nat.finite_of_card_ne_zero hp.1.ne_zero
  have : Nontrivial α := Finite.one_lt_card_iff_nontrivial.mp hp.1.one_lt
  exact ⟨fun H _ => H.eq_bot_or_eq_top_of_prime_card⟩

end Cyclic

section QuotientCenter

open Subgroup

variable [Group G] [Group G']

/-- A group is commutative if the quotient by the center is cyclic.
  Also see `commGroupOfCyclicCenterQuotient` for the `CommGroup` instance. -/
@[to_additive
/-- A group is commutative if the quotient by the center is cyclic.
Also see `addCommGroupOfCyclicCenterQuotient` for the `AddCommGroup` instance. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variant9cafb2941c1c48fec9b28e4fcec489be3cb504484129154d272a10770a4970ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variant9cafb2941c1c48fec9b28e4fcec489be3cb504484129154d272a10770a4970ff.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecf625e54b46b367425daf33ac8da34d2308bc83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
