# getElem?_rotate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c35a2a6-27c7-4052-5b24-2089ee81592f",
  "kind": "theorem",
  "lexical_name": "getElem?_rotate",
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
  "slug": "getelem-rotate--89ec3a1d4e4174965b5fc776",
  "source": {
    "blob": "68640afe4badd4a6f97b114c399fd2afde339270",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 197,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Variantc4fda8b0617e3a000885071f220803265181197372db28b5c108ddf311336765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89ec3a1d4e4174965b5fc7763f2af613a6be625436c838dbcbff319ea1d59408",
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

Occurrence: `result:8c35a2a6-27c7-4052-5b24-2089ee81592f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem?_rotate {l : List α} {n m : ℕ} (hml : m < l.length) :
    (l.rotate n)[m]? = l[(m + n) % l.length]? := by
  rw [rotate_eq_drop_append_take_mod]
  rcases lt_or_le m (l.drop (n % l.length)).length with hm | hm
  · rw [getElem?_append_left hm, getElem?_drop, ← add_mod_mod]
    rw [length_drop, Nat.lt_sub_iff_add_lt] at hm
    rw [mod_eq_of_lt hm, Nat.add_comm]
  · have hlt : n % length l < length l := mod_lt _ (m.zero_le.trans_lt hml)
    rw [getElem?_append_right hm, getElem?_take_of_lt, length_drop]
    · congr 1
      rw [length_drop] at hm
      have hm' := Nat.sub_le_iff_le_add'.1 hm
      have : n % length l + m - length l < length l := by
        rw [Nat.sub_lt_iff_lt_add hm']
        exact Nat.add_lt_add hlt hml
      conv_rhs => rw [Nat.add_comm m, ← mod_add_mod, mod_eq_sub_mod hm', mod_eq_of_lt this]
      omega
    · rwa [Nat.sub_lt_iff_lt_add' hm, length_drop, Nat.sub_add_cancel hlt.le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Variantc4fda8b0617e3a000885071f220803265181197372db28b5c108ddf311336765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Variantc4fda8b0617e3a000885071f220803265181197372db28b5c108ddf311336765.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68640afe4badd4a6f97b114c399fd2afde339270` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
