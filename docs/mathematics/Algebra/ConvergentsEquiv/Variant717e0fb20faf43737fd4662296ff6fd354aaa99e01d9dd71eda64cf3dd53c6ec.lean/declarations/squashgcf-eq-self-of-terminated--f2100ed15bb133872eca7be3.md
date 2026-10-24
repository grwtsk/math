# squashGCF_eq_self_of_terminated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f86da414-7fb9-536e-038a-e32cda5ffd40",
  "kind": "theorem",
  "lexical_name": "squashGCF_eq_self_of_terminated",
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
  "slug": "squashgcf-eq-self-of-terminated--f2100ed15bb133872eca7be3",
  "source": {
    "blob": "71bb0e6982734d471b0d8b2170fa29c4831a1de6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 200,
    "path": "GRWTSK/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2100ed15bb133872eca7be31284cdee94b6afa1f14268fd7f8ac29d82241beb",
  "verification": {
    "reference": "docs/verification/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f86da414-7fb9-536e-038a-e32cda5ffd40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squashGCF_eq_self_of_terminated (terminatedAt_n : TerminatedAt g n) :
    squashGCF g n = g := by
  cases n with
  | zero =>
    change g.s.get? 0 = none at terminatedAt_n
    simp only [convs', squashGCF, convs'Aux, terminatedAt_n]
  | succ =>
    cases g
    simp only [squashGCF, mk.injEq, true_and]
    exact squashSeq_eq_self_of_terminated terminatedAt_n

/-- The values before the squashed position stay the same. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71bb0e6982734d471b0d8b2170fa29c4831a1de6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
