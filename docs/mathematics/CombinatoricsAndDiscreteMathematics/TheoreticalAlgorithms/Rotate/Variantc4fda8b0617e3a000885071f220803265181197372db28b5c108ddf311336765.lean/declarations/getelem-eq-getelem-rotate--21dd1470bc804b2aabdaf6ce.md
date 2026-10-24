# getElem_eq_getElem_rotate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f46bb083-54e1-9aa5-666c-4983f8585b48",
  "kind": "theorem",
  "lexical_name": "getElem_eq_getElem_rotate",
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
  "slug": "getelem-eq-getelem-rotate--21dd1470bc804b2aabdaf6ce",
  "source": {
    "blob": "68640afe4badd4a6f97b114c399fd2afde339270",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 243,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Variantc4fda8b0617e3a000885071f220803265181197372db28b5c108ddf311336765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21dd1470bc804b2aabdaf6ce985ccb166b1cdf0a94a18794b550ad2889ff9409",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Variantc4fda8b0617e3a000885071f220803265181197372db28b5c108ddf311336765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f46bb083-54e1-9aa5-666c-4983f8585b48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem_eq_getElem_rotate (l : List α) (n : ℕ) (k : Nat) (hk : k < l.length) :
    l[k] = ((l.rotate n)[(l.length - n % l.length + k) % l.length]'
      ((Nat.mod_lt _ (k.zero_le.trans_lt hk)).trans_eq (length_rotate _ _).symm)) := by
  rw [getElem_rotate]
  refine congr_arg l.get (Fin.eq_of_val_eq ?_)
  simp only [mod_add_mod]
  rw [← add_mod_mod, Nat.add_right_comm, Nat.sub_add_cancel, add_mod_left, mod_eq_of_lt]
  exacts [hk, (mod_lt _ (k.zero_le.trans_lt hk)).le]

/-- A version of `List.get_rotate` that represents `List.get l` in terms of
`List.get (List.rotate l n)`, not vice versa. Can be used instead of rewriting `List.get_rotate`
from right to left. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Variantc4fda8b0617e3a000885071f220803265181197372db28b5c108ddf311336765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Variantc4fda8b0617e3a000885071f220803265181197372db28b5c108ddf311336765.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68640afe4badd4a6f97b114c399fd2afde339270` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
