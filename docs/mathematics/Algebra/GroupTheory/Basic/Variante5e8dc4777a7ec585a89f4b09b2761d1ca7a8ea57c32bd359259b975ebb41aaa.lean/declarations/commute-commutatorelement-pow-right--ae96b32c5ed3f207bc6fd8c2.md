# Commute.commutatorElement_pow_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6c8103b-5fe7-cf5f-e9fa-c65771f21b6a",
  "kind": "theorem",
  "lexical_name": "Commute.commutatorElement_pow_right",
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
  "slug": "commute-commutatorelement-pow-right--ae96b32c5ed3f207bc6fd8c2",
  "source": {
    "blob": "baa949e1fd5a74609ff23fb18b890208fd90625e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 104,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variante5e8dc4777a7ec585a89f4b09b2761d1ca7a8ea57c32bd359259b975ebb41aaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae96b32c5ed3f207bc6fd8c2635a248c92609bcb972ca63ff72eef2b58ea4c4e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variante5e8dc4777a7ec585a89f4b09b2761d1ca7a8ea57c32bd359259b975ebb41aaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6c8103b-5fe7-cf5f-e9fa-c65771f21b6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Commute.commutatorElement_pow_right {a b : G} (h : Commute b ⁅a, b⁆) (n : ℕ) :
    ⁅a, b⁆ ^ n = ⁅a, b ^ n⁆ := by
  induction n with
  | zero => simp
  | succ n ih => rw [pow_succ', pow_succ', commutatorElement_mul_right_eq_mul_conj, ←ih,
        (h.pow_right n).right_comm, mul_inv_cancel_right]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variante5e8dc4777a7ec585a89f4b09b2761d1ca7a8ea57c32bd359259b975ebb41aaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variante5e8dc4777a7ec585a89f4b09b2761d1ca7a8ea57c32bd359259b975ebb41aaa.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `baa949e1fd5a74609ff23fb18b890208fd90625e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
